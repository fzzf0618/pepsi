set :stage, :production
server '39.108.59.8', user: 'deploy', roles: %w{web app db}, port: 25000
set :application, "pepsi"
set :repo_url, "git@github.com:fzzf0618/pepsi.git"
set :branch, 'master'
set :deploy_to, "/var/www/pepsi"
set :user, "deploy"
set :use_sudo, true
set :ssh_options, {
 forward_agent: false,
 user: 'deploy',
 port: 25000
}

set :puma_role, :app
set :deploy_via,      :remote_cache
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord
set :puma_threads, [0, 16]
set :puma_workers, 0
set :puma_init_active_record, false
set :puma_preload_app, true
