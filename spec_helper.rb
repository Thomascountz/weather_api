require 'vcr'
Dir.glob('./lib/**/*.rb') { |f| require f }
VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end