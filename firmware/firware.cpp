#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <iostream>
#include <unistd.h>

#define STTS22H_ADDR 0x3c // Replace this with the actual I2C address of your sensor

#define STTS22H_POWER_DOWN 0x00
#define STTS22H_ONE_SHOT 0x01
#define STTS22H_1Hz 0x02
// Add other output data rates if needed

int mySTTS; // I2C handle
float temp;

bool dataReady();
void getTemperatureF(float *temperature);

int main()
{
    wiringPiSetup();
    mySTTS = wiringPiI2CSetup(STTS22H_ADDR);

    if (mySTTS == -1)
    {
        std::cerr << "Failed to initialize I2C." << std::endl;
        return 1;
    }

    std::cout << "Ready" << std::endl;

    // Other setup code...

    // You might need to replace this with the correct value for your sensor
    wiringPiI2CWriteReg8(mySTTS, 0x10, STTS22H_POWER_DOWN);
    delay(10);
    wiringPiI2CWriteReg8(mySTTS, 0x10, STTS22H_1Hz);

    // Other setup code...

    while (true)
    {
        if (dataReady())
        {
            getTemperatureF(&temp);

            // Temperature in different units can be retrieved
            // using the following functions.

             //getTemperatureC(&temp);
            // getTemperatureK(&temp);

            std::cout << "Temp: " << temp << "F" << std::endl;
        }

        delay(1000);
    }

    return 0;
}

bool dataReady()
{
    
    return (wiringPiI2CReadReg8(mySTTS, 0x11) & 0x01) != 0;
}

void getTemperatureF(float *temperature)
{
    
    int rawTemp = wiringPiI2CReadReg16(mySTTS, 0x12);
    *temperature = (static_cast<float>(rawTemp) / 256.0) + 32.0;
}
