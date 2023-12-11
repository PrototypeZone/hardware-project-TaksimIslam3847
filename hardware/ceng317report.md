# Hardware report/Build instructions
Your target audience is a Computer Engineering Technology student from a different college that would like to recreate your project. Guidelines for next semester's CENG 355 Report are available.[^1]
[^1]: Technology Report Guidelines. OACETT, Revised September 2022. Available at: https://www.oacett.org/getmedia/5ad707d7-f472-4b24-a7fe-f34e270b0c41/2022_TR_Guidelines_-_Updated_Version_-_Sept_2022.pdf
## Table of Contents
[1.0 Introduction](#14-introduce-the-broadcom-development-platform-and-exisiting-functionality)   
[2.0 Body](#23-added-functionality)   
[2.1 Sensor/Effector purchase](#26-sensor-effector-purchase)   
[2.2 PCB design and soldering](#31-pcb-design-and-soldering)   
[2.3 Case design and assembly](#57-case-design-and-assembly)   
[2.4 Firmware development and use](#72-firmware-development-and-use)   
[3.0 Testing and Results](#80-testing-and-results)   
[4.0 References](#89-references)  

## 1.0 SparkFun Temperature Sensor - STTS22H (Qwiic)

 My name is Taksim Islam. This is my Pi Temperature Sensor project. It uses SparkFun Temperature Sensor - STTS22H (Qwiic). Connected to a Rasberry Pi. This project will let user measure the temperature for their potted plant/garden.
 
![image_50450177](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/6180341c-93d2-45e0-8626-65a29d0a2edf)

Specification:
I2C: 0x3c

## 2.0 Added functionality   

After Completing the project, the user will be able to measure the temperature with -40C is lowest and +125C is the highest with accuracy of +- 0.5C
### 2.1 Sensor/Effector purchase   

Sensor: SparkFun Temperature Sensor - STTS22H (Qwiic): https://www.sparkfun.com/products/21273
Bill of Material:
https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/blob/main/hardware/bom.md
### 2.2 PCB design and soldering   

PCB Creation:
1.	Use KiCad
2.	Launch KiCad and start with default settings
3.	Download the files below:
   
Project File:https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/blob/main/hardware/pcb/TaksimIslam2023-10-16.zip
Schematic File: https://cdn.sparkfun.com/assets/c/2/6/1/9/SparkFun_Micro_Temperature_Sensor-STTS22H-Schematic.pdf?_gl=1*i4wknd*_ga*MTY2NjY3NTgxMS4xNjk0NDY1NDE5*_ga_T369JS7J9N*MTcwMjI3NzA4My45LjEuMTcwMjI3ODcyMC40Ni4wLjA.
PCB:https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/tree/main/hardware/pcb
4.Use KiCad to open the project file.
5.Edit the text of my name and replace it with yours, and the date to current date. 
6. Save the project as with your name and dates
7. Use File->frabrication outputs-> Gerbers(.gbr)and plot the Gerbers
8. Generate Drill Files-> PTH and NPTH in a single file
9. Save the project
10. Save it to a zip file 
11. Print the pcb

Soldering:
Solder the pcb with resistors(220ohm and 2.2kohm),transistor(2N4124 PNP) and led(5mm LED)like below. Perform a continuity test after soldering.
 
![image_67167233](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/916ae2c9-2ad9-46d5-9977-59c11e6e1b7f)



### 2.3 Case design and assembly   

1.	Edit the cdr file and use Schematic file to add hole for the sensor.
2.	Saves as PDF
3.	Print and Laser Cut the board
4.	Unscrew the Rasberry Pi Shell if you have the shell on
5.	Insert M2.5 screw in to the 4 PI holes put the printed matching donut holes on top
   ![image_67227649](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/7cb8c5be-1e64-4289-bdf2-b75d13e710f9)

7.	Insert the 16mm Standoff above.
8.	Place the PCB with the connected stacking header on top of the GPIO and 16mm Standoff respectively.
9.	Screw the sensor on the board.
10.	 Plug the sensor with the Qwiic cables and plug it to the PCB Qwiic Outlet.
11.Finished product: 
	![image_50450177](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/746e9e7c-f4fe-4395-aac0-84a571547f3e)
### 2.4 Firmware development and use   
In the official account firmware code for pi is not available. You can use below firmware code: 
Firmware:
https://github.com/jposada202020/CircuitPython_STTS22H 
Just change the I2C address to 0x3c
After connecting the sensor run the following command:
sudo pip3 install circuitpython-stts22h

## 3.0 Testing and Results   

After loading Putty. Use i2cdetect -y 1 to scan for sensor’s I2C. If there is 0x3c in the screen then the sensor is working.
 ![image](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/dda57dff-bb87-485c-989b-d388946a4e72)

Then upload the firmware code and run it using python3 filename. The result should be like this:
![image](https://github.com/PrototypeZone/hardware-project-TaksimIslam3847/assets/108566387/bd782fb4-9bdf-4b77-a98d-df0e0b376e98)

 
## 4.0 References   
SparkFun: https://www.sparkfun.com/products/21273
Firmware: https://github.com/jposada202020/CircuitPython_STTS22H/tree/master
Prototype Zone: https://github.com/PrototypeZone/ceng317
