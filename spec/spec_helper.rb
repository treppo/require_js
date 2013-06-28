# add lib directory to the ruby search path
$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

require 'rubygems'
require 'require_js'
require 'rspec/fire'
require 'coveralls'
Coveralls.wear!

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
# Dir["spec/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
  config.include(RSpec::Fire)
end
