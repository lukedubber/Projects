# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
#config.autoload_paths += Dir["#{config.root}/lib/**/"]

run Projects::Application
