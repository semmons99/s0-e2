require 'cinch'
require 'ipbot/ip2geo'

module IPBOT
  def self.run(_server, _port, _channel, _password = nil)
    bot = Cinch.setup do
      server   _server
      port     _port
      nick     "ip2geo-bot"
      channels ["#{_channel} #{_password}"]
    end

    bot.plugin "ip2geo :ip" do |m|
      m.reply "#{m.nick}: #{IPBOT.ip2geo(m.args[:ip]).join(', ')}"
    end

    bot.run
  end
end
