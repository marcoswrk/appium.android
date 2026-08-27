require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'
require_relative 'utils.rb'
require 'yaml'
require_relative 'initializer.rb'
include RSpec::Matchers

World(Actions
)
caps = YAML.safe_load(
  File.read(File.join(File.dirname(__FILE__), 'capsAndroid.yml')),
  aliases: true,
  symbolize_names: true
)

opts = {
  caps: caps[:caps],
  appium_lib: {
    server_url: "http://127.0.0.1:4723"
  }
}

$driver = Appium::Driver.new(opts, true)
Appium.promote_appium_methods Object