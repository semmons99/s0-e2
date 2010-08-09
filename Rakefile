require 'rubygems'
require 'rake'

desc "test ip2geo, requires IP="
task :ip2geo do
  abort "requires IP=" unless ENV.include?('IP')
  ip = ENV["IP"]

  require 'lib/ipbot/ip2geo'
  puts IPBOT.ip2geo(ip)
end
