desc "Pings Heroku apps to keep them alive"
task :dyno_ping do

  [ 'https://www.mapistry.com/',
    'https://mapistry-dev.herokuapp.com' ].each do |uri|

    `curl #{uri}`
  end
end