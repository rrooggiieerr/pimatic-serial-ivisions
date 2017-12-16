module.exports = (env) ->
  class SerialIVisionsPlugin extends env.plugins.Plugin
    init: (app, @framework, @config) =>
      deviceConfigDef = require('./device-config-schema')
      @framework.deviceManager.registerDeviceClass('SerialIVisionsShutterController', {
        configDef: deviceConfigDef.SerialIVisionsShutterController,
        createCallback: (config, lastState) =>
          device = new SerialIVisionsShutterController(config, lastState)
          return device
      })

  class SerialIVisionsShutterController extends env.devices.SerialShutterController
    constructor: (@config, lastState) ->
      config = {}
      config.baudRate = 2400
      config.dataBits = 8
      config.parity = 'none'
      config.stopBits = 1
      config.flowControl = false
      config.upCommand = '0xFF0xAA0xEE0xEE0xDD'
      config.downCommand = '0xFF0xAA0xEE0xEE0xEE'
      config.stopCommand = '0xFF0xAA0xEE0xEE0xCC'
      config.replaceHex = true

      super(config, lastState)

    destroy: () ->
      super()

  return new SerialIVisionsPlugin
