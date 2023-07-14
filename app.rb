require 'active_record'
require 'dotenv/load'
require 'dotenv'
Dotenv.load

require "functions_framework"
require_relative "./lib/functions/cancel_shipment"

