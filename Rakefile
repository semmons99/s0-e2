require 'rubygems'
require 'rake'

desc "test ip2geo, requires IP="
task :ip2geo do
  abort "requires IP=" unless ENV.include?('IP')
  ip = ENV["IP"]

  require 'lib/ipbot/ip2geo'
  puts IPBOT.ip2geo(ip)
end

desc "startup bot, requires CHANNEL=, optional SERVER= PORT= PASSWORD="
task :start do
  abort "requires CHANNEL=" unless ENV.include?('CHANNEL')

  server   = ENV['SERVER'] || "irc.freenode.net"
  port     = ENV['PORT'] || "6667"
  channel  = ENV['CHANNEL']
  password = ENV['PASSWORD'] || ""

  $LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + '/lib'))
  require 'ipbot'

  IPBOT.run(server, port, channel, password)
end
