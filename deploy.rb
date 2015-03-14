#!/usr/bin/env ruby

require 'sshkit'
require 'sshkit/dsl'

server = ENV["SERVER"]
unless server
  puts 'Provide a server ip by setting SERVER'
  exit
end

host = SSHKit::Host.new("root@#{server}")
host.password = "root"

on host do |host|
  upload! File.dirname(__FILE__) + '/pi_setup.sh', '/root/pi_setup.sh'
  execute 'sh /root/pi_setup.sh'
end
