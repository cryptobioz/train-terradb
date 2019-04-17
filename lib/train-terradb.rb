libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'train-terradb/version'
require 'train-terradb/transport'
require 'train-terradb/platform'
require 'train-terradb/connection'
