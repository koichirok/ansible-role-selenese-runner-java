require 'rubygems'
require 'bundler/setup'

require 'serverspec'
require 'pathname'
require 'net/ssh'

RSpec.configure do |config|
  set :host, ENV['KITCHEN_HOSTNAME']
  # ssh options at http://net-ssh.github.io/net-ssh/Net/SSH.html#method-c-start
  # ssh via ssh key (only)
  set :ssh_options,
    :user => ENV['KITCHEN_USERNAME'],
    :port => ENV['KITCHEN_PORT'],
    :auth_methods => [ 'publickey' ],
    :keys => [ ENV['KITCHEN_SSH_KEY'] ],
    :keys_only => true,
    :verify_host_key => false,
    :use_agent => false,
    :verbose => :error
  set :backend, :ssh
  set :request_pty, true
end
