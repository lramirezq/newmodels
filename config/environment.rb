# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
NewModels::Application.initialize!
require 'will_paginate/array'
require 'carrierwave/processing/mini_magick'

