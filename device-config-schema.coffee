module.exports = {
  title: "pimatic-serial-ivisions device config schemas"
  SerialIVisionsShutterController: {
    title: "iVisions Shutter Controler config options"
    type: "object"
    extensions: ["xLink", "xAttributeOptions"]
    properties:
      serialPort:
        description: "Serialport name (e.g. /dev/ttyUSB0)"
        type: "string"
        default: "/dev/ttyUSB0"
  }
}
