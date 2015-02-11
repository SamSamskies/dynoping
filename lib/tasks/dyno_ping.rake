desc "Pings Heroku apps to keep them alive"
task :dyno_ping do

  [ 'https://www.catmeyo.com',
    'https://www.mapistry.com/',
    'https://mapistry-staging-app.herokuapp.com',
    'https://mapistry-staging-homepage.herokuapp.com',
    'http://devexperts.herokuapp.com' ].each do |uri|

    `curl #{uri}`
  end
end