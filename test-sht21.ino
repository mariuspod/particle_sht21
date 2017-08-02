// This #include statement was automatically added by the Particle IDE.
#include "application.h"
// This #include statement was automatically added by the Particle IDE.
#include "SHT2x.h"

SHT2xClass SHT2x;

double SHT21Humidity, SHT21Temperature;

void setup() {
    Wire.begin();
    Particle.variable("humidity", SHT21Humidity);
    Particle.variable("temperature", SHT21Temperature);
}

void loop() {
    delay(1000);
    SHT21Humidity    = SHT2x.GetHumidity();
    SHT21Temperature = SHT2x.GetTemperature();
}
