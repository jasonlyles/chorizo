load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

# be sure to change these
set :domain, 'districttaco.com'
set :application, 'dtaco'

# the rest should be good
set :repository,  "git@github.com:csexton/chorizo.git"
set :deploy_to, "/home/dtaco/dev.districttaco.com"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

