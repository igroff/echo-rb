# myapp.rb
require 'sinatra'
require 'json'

def generate()
  response = {
    :name => 'sandwich',
    :env => ENV.to_hash(),
    :hostname => Socket.gethostname(),
    :path => request.path,
    :scheme => request.scheme,
    :script_name => request.script_name,
    :query_string => request.query_string,
    :ruby_version => ENV['RUBY_VERSION']
  }
 JSON.generate(response)
end

get '*' do
  generate()
end
