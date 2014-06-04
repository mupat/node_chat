path = "./public/js/directive/"
Editable = require "#{path}editable"
Time = require "#{path}time"
Link = require "#{path}link"
Text = require "#{path}text"

chatAppControllers = angular.module 'chatApp.directives', []

chatAppControllers.directive 'contenteditable', -> new Editable()
chatAppControllers.directive 'historytime', -> new Time()
chatAppControllers.directive 'historymessage', ($timeout, $compile) -> new Text($timeout, $compile)
chatAppControllers.directive 'a', -> new Link()