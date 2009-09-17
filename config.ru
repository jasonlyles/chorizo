ENV['GEM_PATH'] = '/home/dtaco/.gems:/usr/lib/ruby/gems/1.8'
require 'rubygems'
require 'sinatra'
#require 'vendor/sinatra/lib/sinatra.rb'
require 'app.rb'
path = '.'

set :root, path
set :views, path + '/views'
set :public,  path + '/public'
set :run, false
set :environment, :production
set :raise_errors, true

log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application

