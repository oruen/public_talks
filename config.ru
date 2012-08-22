# encoding: utf-8
require 'bundler'
Bundler.setup :default
require 'sinatra'
require 'slim'
require 'sprockets'
require 'sass'
require 'coffee_script'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/images'
  run environment
end

map '/' do
  run Sinatra::Application
end
