# I<sup>2</sup>SHat
An SPDIF RX and TX I<sup>2</sup>S Hat for the Raspberry Pi 2, 3, 4, etc. -- all versions that uses the same GPIO pinout for I<sup>2</sup>S.

## Overview
This project was developed as a replacement or substitute for the various DSP MCU-based processors available on the market. The goals of the project were:
* Leverage the ever-increasing processing power of the Raspberry Pi platform through CamillaDSP https://github.com/HEnquist/camilladsp for DSP, decoupling the number of filters and processing capability from the available MCU-based solutions.
* Allow digital input and output without resampling or other pre/post-processing.
* Utilize SPDIF from 44.1kHz-192kHz Stereo coaxial and/or optical.
* Automatic detection of the input sample rate and reconfiguration of the digital filters based on the sample rate found.

To make this possible, a combination of software and hardware is required. The schematics and PCB to create the SPDIF hat are provided in KiCAD format in the "I2SHat" folder. Please modify the schematic and PCB as required for component availibility.

![](https://github.com/raptorlightning/I2SHat/blob/main/Pictures/Enclosed.jpg)

## Hardware Information
For the PCB, general board rules for sensitive traces should be adhered to as seen in the original design. Extra grounding pads are provided around the SPDIF receiver (WM8804) if physical shielding is needed for nearby EMI components. This has not been a problem with my own testing on a Raspberry Pi 4 Model B above the input buck converter. 
Some BOM cost reductions are as follows:
* Use cheaper 0805 0.1uF X7R decoupling capacitors (>10V), they will work fine with the footprints in the Gerber.
* Don't buffer the inputs before the multiplexer, or use a combined buffer IC. Know the output of your TOSLINK Receiver before you do this.
* Use less expensive decoupling on the output of the 3.3V regulators (see datasheet).

The other aspects of the circuit have been tested and proven. Resistor tolerances are of no concern, neither are capacitor tolerances. Regardless, don't use a 10uF Y5U 5V rated MLCC capacitor for the regulator outputs. That will violate the datasheet.

The SPDIF input and output are tested as shown to work up to 192kHz. Substituting parts (especially the IC types) is discouraged. However, substituing brands or footprints is okay. For example, on the board there is an NXP part in a very small package that is simply a 2:1 LVCMOS mux - NC7SZ157P6X, same as a 74LVC1G157. If you can find a similar part available in a bigger footprint, please edit the board and substitute. The part package size was due to current availability. Only subsitute the unbuffered and buffered inverters on the SPDIF Coaxial input for appropriate unbuffered and buffered parts from other suppliers. Please maintain phase of inputs and outputs if you substitute multi-gate chips and redesign the board.

The footprints provided for TOSLINK are for the TORX142L and TOTX142L, available currently as the Ali-sourced DLR2180 and DLT2180. Unfortunately the market for US/EU TOSLINK receivers at 25mbps bandwidth is largely dead, and the only source is Aixin. Everlight and Toshiba both no longer produce these modules. If you are sourcing from Aixin, ensure that you order a 25mbps module (DLx2xxx) to guarantee 192kHz operation (192*32(Bits/channel)*2(Channels)*2(BMC)=24.576MHz). Modify the footprints as necessary for the TOSLINK module you purchase.

There is a switch on the PCB for the receiver side to choose SPDIF coaxial or TOSLINK input. This is required but can be wired as desired, autodetection is possible, with great modification in hardware or software, but not advised. Generally, one would set up a system with this DSP in a path of specific choosing. The footprint is provided for a GW12RCP equivalent 0.1" microswitch; however, this could be wired to a front panel switch or the Nano itself with further programming and external control. Note that the silkscreen is correct for the switch, but opposite of the connected pads due to the switch mechanics.

If the HifiBerry case (https://www.hifiberry.com/shop/cases/hifiberry-universal-case-black-pi4/) is used, you will need to trim the TOSLINK devices specified. There are 192kHz (25Mbps) TOSLINK transmitters and receivers available from overseas sources in quantity without the screw mounting terminal, but the DLR2180 and DLT2180 TOXX142L equivalents generally have good availability. If you use these substitutes, trim off the screw terminal and add mechanical strength with solid-core wire through the provided holes on the board as shown. If the HifiBerry case is used, pressing down on the top of the case resets the Nano and the WM8804, which might be useful if your Pi takes longer than 45 seconds to start and you don't modify the code (see the INO). There is diode protection for the 5V supply, so you should be able to program the Nano in-circuit (no warranty...) The Pi+Hat+Nano stack is designed to fit in the HifiBerry case with a little extra filing for the TOSLINK connectors on the bottom of the cutout. Height is tight, but it does fit using the standard height board headers specified.


![](https://github.com/raptorlightning/I2SHat/blob/main/Pictures/Back2.jpg)

## Software Information

You will need to flash the project INO file to an Arduino Nano for control of the WM8804 and sample rate detection. The code and functionality could likely be accomplished with an ATTINY, but for the price and seeing as the footprint fits, a Nano is adequate. See the Arduino documentation for proper flashing of the INO file. Modify as you need for your purposes. 

On the software side of things, the Raspberry Pi must be responsible for receiving I<sup>2</sup>S data, transmitting I<sup>2</sup>S data, and processing it in the middle. Using Ubuntu Server, with a DTS overlay for slave I<sup>2</sup>S operation:

The tested system consists of Ubuntu Server 20.04.2 LTS running on a Raspberry Pi Model 4B. Modifications are posted below:
* Install the required I<sup>2</sup>S Slave DTOverlay at https://github.com/AkiyukiOkayasu/RaspberryPi_I2S_Slave
* Set up CamillaDSP to run as a service on boot through the Python script in the repostiory. There are many different ways to accomplish this, but how it has been tested is through the following (sudo assumed):
  1. Setup WiFi and SSH. I won't illustrate that here as there are many guides available online for it.
  2. Copy the CamillaDSP executable (appropriate to your arch (for RPi4B and Ubuntu Server, it should be aarch64)), startdsp.py, and all of your frequency-specific YML files to a created /etc/camilladsp/ directory.
  3. Create a file in the /etc/systemd/system directory called camilladsp.service that contains the following code:
    * ```
      [Unit]
      Description=CamillaDSP Script Booter
      After=multi-user.target

      [Service]
      ExecStart=/usr/bin/python3 /etc/camilladsp/startdsp.py
      #ExecStart=cat
      StandardOutput=kmsg
      StandardError=kmsg
      Restart=always
      CPUSchedulingPolicy=rr
      CPUSchedulingPriority=99
      IOSchedulingClass=realtime
      IOSchedulingPriority=0

      [Install]
      WantedBy=multi-user.target
    * This ensures that the process (and hopefully subprocess of CamillaDSP) runs without any interruption due to other system services. The point of installing Ubuuntu server is that you will have very few, if any, processes running in the background. All CPU should be dedicated to the DSP.
  4. In the /etc/systemd/system/multi-user.target.wants directory create a symlink using "ln" camilladsp.service to /etc/systemd/system/camilladsp.service to create a link for the target.
* Modify the following in the /boot/firmware directory to enable I<sup>2</sup>S and disable onboard audio (unless you need it).
    * /boot/firmware/syscfg.txt
      *  ```
          \# This file is intended to be modified by the pibootctl utility. User
          \# configuration changes should be placed in "usercfg.txt". Please refer to the
          \# README file for a description of the various configuration files on the boot
          \# partition.

          \#enable_uart=1
          \#dtparam=audio=on
          \#dtparam=i2c_arm=on
          \#dtparam=spi=on
          dtparam=i2s=on
          cmdline=cmdline.txt
          
* Headers for YML files for CamillaDSP include the following since the required DTOverlay is installed (obviously samplerate is file-dependent):
    * ```---
      #You may need to specify chunksize (1024) and target_level (512). See default files and CamillaDSP documentation.
      
      devices:
        samplerate: 44100
        chunksize: 1024
        target_level: 512
        capture:
          type: Alsa
          channels: 2
          device: "hw:CARD=GenericStereoAu,DEV=1"
          format: S32LE
        playback:
          type: Alsa
          channels: 2
          device: "hw:CARD=GenericStereoAu,DEV=0"
          format: S32LE
    
* Set up a Samba share for the /etc/camilladsp directory if you want to remotely access it for uploading new configurations.

## Notes and Addendum
Please play around with the files and let me know if you have any better ideas! At heart, I'm a hardware guy, I make the software to work for what I need but don't go beyond. If you have a better solution for the software or find any holes in my instructions, please reach out. I would like to make this as straightforward as possible for anyone to use.
