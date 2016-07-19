# Load centralized environment configurations
require ::File.expand_path('../config/environments/init', __FILE__)

require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run Sinatra::Application
