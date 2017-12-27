pimatic-serial-ivisions
=================
Pimatic Plugin that supports sending commands to iVisisons projector screens and projector lifts over the RS485 interface.
I use a cheap USB RS485 controler from eBay to talk to the projector screen.

The iVisions projector screen seems to be a rebranded screen as I found it only to be available in the webshop where I bought is.
Some Googling around proved me right, as the protocol is used in more devices.

This are the protocol details:
2400 baud 8N1
up command  : 0xFF 0xAA 0xEE 0xEE 0xDD
down command: 0xFF 0xAA 0xEE 0xEE 0xEE
stop command: 0xFF 0xAA 0xEE 0xEE 0xCC

Known to work:
iVisions Electro M Series

Not tested but use te same protcol according to the documentation:
iVisions Electro L/XL/Pro/HD Series
iVisions PL Series beamer lift
Elite Screens
XY Screens

Please let me know if your projector screen is also supported by this plugin so I can improve the overview of supportd devices.

Configuration
-------------
If you don't have the serial plugin add it to the plugin section:

```
    {
      "plugin": "serial",
      active": true
    },
```

Then add the serial-ivisions plugin to the plugin section:
```
    {
      "plugin": "serial-ivisions",
      active": true
    }
```

Then add the device entry for your device into the devices section:
```
    {
      "id": "serial-ivisions-screen",
      "class": "SerialIVisionsController",
      "name": "Projector Screen",
      "serialport": "/dev/ttyUSB0"
    }
```

Then you can add the items into the mobile frontend
# pimatic-serial-ivisions
