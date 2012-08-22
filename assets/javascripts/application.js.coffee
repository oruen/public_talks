#= require jquery-1.7.min
#= require modernizr.custom
#= require core/deck.core
#= require_tree ./extensions

$.deck('.slide')
$.deck('remote', {
  server: 'http://localhost',
  port: 9293
  #key: [md5 hash]
})
