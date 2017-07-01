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
