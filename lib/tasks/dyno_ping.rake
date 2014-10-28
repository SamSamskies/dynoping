desc "Pings Heroku apps to keep them alive"
task :dyno_ping do

  [ 'https://www.catmeyo.com',
    'https://www.mapistry.com/',
    'https://mapistry-dev.herokuapp.com',
    'http://outsidelandsyo.herokuapp.com' ].each do |uri|

    `curl #{uri}`
  end
end