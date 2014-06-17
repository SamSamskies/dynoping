desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do
  require "net/http"

  ['http://mapistry-dev.herokuapp.com'].each do |uri|
    Net::HTTP.get_response(uri)
  end
end