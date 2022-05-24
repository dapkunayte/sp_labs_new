#include "Callback.h"
#include "ThisThread.h"
#include "mbed.h"
#include "BME280.h"
#include <chrono>
#include <DigitalInOut.h>
#include "DigitalOut.h"
#include "PinNameAliases.h"
#include "PinNamesTypes.h"
#include "pinmap.h"
#include <cstdio>


BME280 sensor(PB_9, PB_8);
DigitalOut oled1(LED1);
Thread thread;
Thread thread1;
Mutex mtx;
int i = 0;
//(USBTX, USBRX);

void send_thread(void){
while(true){
if (i==1){
ThisThread::sleep_for(chrono::milliseconds((int)sensor.getHumidity()*10));
oled1 = 1;
ThisThread::sleep_for(chrono::milliseconds((int)sensor.getHumidity()*10));
oled1 = 0;
}
else{
    oled1=0;
}
}
}

int main() {

while(true) {
oled1 = 0;
printf("%d degC, %d hPa, %d %%\n",
(int)sensor.getTemperature(),
(int)sensor.getPressure(),
(int)sensor.getHumidity());
wait_us(1000000);
if (((int)sensor.getTemperature() > 30))
{
i=1;
thread.start(callback(send_thread));
}
else
{
i=0;
}
}
}