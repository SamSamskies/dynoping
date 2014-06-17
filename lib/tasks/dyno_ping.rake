desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do

  ['http://mapistry-dev.herokuapp.com'].each do |uri|
    `curl #{uri}`
  end
end