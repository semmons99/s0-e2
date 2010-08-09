require 'cinch'
require 'ipbot/ip2geo'

module IPBOT
  def self.run(server, port, channel, password = "")
    @server   = server
    @port     = port
    @channels = ["#{channel} #{password}"]

    bot = Cinch.setup do
      server   @server
      port     @port
      nick     "ipbot"
      channels @channels
    end

    bot.plugin "ip2geo :ip" do |m|
      m.reply "#{m.nick}: #{IPBOT.ip2geo(m.args[:ip])}"
    end

    bot.run
  end
end
