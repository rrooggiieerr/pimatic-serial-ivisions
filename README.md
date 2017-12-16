pimatic-serial-ivisions
=================

Pimatic Plugin that supports sending commands to iVisisons projector screens and projector lifts.

Configuration
-------------

Add the plugin to the plugin section:

```
    {
      "plugin": "serial-ivisions"
    },
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
