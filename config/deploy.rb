# config valid only for current version of Capistrano
lock "3.8.2"

set :application, "pepsi"
set :repo_url, "git@github.com:fzzf0618/pepsi.git"
set :branch, 'master'
set :deploy_to, "/var/www/pepsi"
set :user, "deploy"
set :use_sudo, true
append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "node_modules"
set :keep_releases, 5
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.4.1'
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value
set :pty,             true
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord
