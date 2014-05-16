Broadcaster = require './js/services/broadcaster'
Network = require './js/services/network'
Logger = require './js/services/logger'
WebRTC = require './js/services/webrtc/'

chatAppServices = angular.module 'chatApp.services', []

chatAppServices.service 'networkInterfaces', [Network]
chatAppServices.service 'broadcaster', [
  '$rootScope'
  'networkInterfaces'
  Broadcaster
]
chatAppServices.service 'webrtc', [
  '$rootScope'
  'broadcaster'
  WebRTC
]

#run logger immediately to make sure we log sent and error events from the services that using the rootScope
chatAppServices.run ['$rootScope', Logger] 