require 'rubygems'
require 'rake'

desc "test ip2geo, requires IP="
task :ip2geo do
  abort "requires IP=" unless ENV.include?('IP')
  ip = ENV["IP"]

  require 'rest_client'
  require 'rexml/document'
  require 'cgi'

  xml = RestClient.get("ipinfodb.com/ip_query.php?ip=#{ip}&timezone=false")
  doc = REXML::Document.new(xml)
  lat = doc.elements.to_a('/Response/Latitude').first.text
  lng = doc.elements.to_a('/Response/Longitude').first.text

  info = doc.elements.to_a('/Response/*').map{|e| "#{e.name}: #{e.text}" }
  info << "map: http://maps.google.com/maps?q=#{lat},+#{lng}+(#{ip})&iwloc=A&hl=en"

  puts info.join(", ")
end
