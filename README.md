# particle_sht21
Particle library originally ported from Arduino to easily expose temperature / humidity values read from SHT21 over I2C bus.
The two values temperature and humidity are read every second and can be received by calling the particle API:

### API call to get the current temperature
`curl https://api.particle.io/v1/devices/DEVICE_ID/temperature`

### API call to get the current humidity
`curl https://api.particle.io/v1/devices/DEVICE_ID/humidity`

## Datasheet SHT21
https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Sensirion_Humidity_Sensors_SHT21_Datasheet_V4.pdf

## Wiring diagram
* red   : VDD
* black : GND
* yellow: SDA (pin D0)
* green : SCL  (pin D1)

Pull-ups used: 4.7kΩ
![Image of Fritzing wiring](https://github.com/mariuspod/particle_sht21/blob/master/sht21_fritzing.png)
