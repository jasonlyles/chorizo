default_run_options[:pty] = true

# Site settings
set :domain, 'districttaco.com'
set :application, 'dtaco'

set :repository,  "git@github.com:csexton/chorizo.git"
set :deploy_to, "/home/dtaco/districttaco.com"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

after "deploy:update_code", "db:symlink"

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

namespace :db do
 desc "Make symlink for database file and config file"
  task :symlink do
    run "ln -nfs #{shared_path}/db/production.sqlite3 #{release_path}/db/production.sqlite3"
    run "ln -nfs #{shared_path}/config/config.yml #{release_path}/config/config.yml"
  end
end


