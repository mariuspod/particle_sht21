# particle_sht21
Particle library originally ported from Arduino to easily expose temperature / humidity values read from SHT21 over I2C bus as API variables.

## Datasheet SHT21
https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Sensirion_Humidity_Sensors_SHT21_Datasheet_V4.pdf

## Wiring diagram
* red   : VDD
* black : GND
* yellow: SDA (pin D0)
* green : SCL  (pin D1)

Pull-ups used: 4.7k Ohm
![Image of Fritzing wiring](https://github.com/mariuspod/particle_sht21/blob/master/sht21_fritzing.png)
