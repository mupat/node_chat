path = "./public/js/controller/"
Start = require "#{path}start"
PeerCtrl = require "#{path}peer"
MsgCtrl = require "#{path}msg"
HistoryCtrl = require "#{path}history"
UserCtrl = require "#{path}user"

chatAppControllers = angular.module 'chatApp.controllers', []

chatAppControllers.controller 'PeerCtrl', [
  '$scope'
  'webrtc'
  PeerCtrl
]
chatAppControllers.controller 'MsgCtrl', [
  '$rootScope'
  '$scope'
  'webrtc'
  MsgCtrl
]
chatAppControllers.controller 'HistoryCtrl', [
  '$scope'
  'user'
  'network'
  HistoryCtrl
]
chatAppControllers.controller 'UserCtrl', [
  '$scope'
  'user'
  UserCtrl
]

chatAppControllers.run ['network', 'notification', Start]
