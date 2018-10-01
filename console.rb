#!/usr/bin/env ruby
require "pry"
load "credentials.rb"
require_relative "spec/spec_helper.rb"
site= new_session(BASEURL, USER, PASSWORD)
puts "Pry session started.\n"
binding.pry
