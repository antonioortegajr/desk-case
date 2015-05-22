require 'sinatra'
require 'oauth'
require 'json'


get '/case/:number' do |n|

case_number = "#{n}"
url = "https://YOURSUBDOMAIN.desk.com/api/v2/cases/"

end_point = url + case_number + message

consumer = OAuth::Consumer.new(
        "API_CONSUMER_KEY",
        "API_CONSUMER_SECRET",
        :site => "https://YOURSUBDOMAIN.desk.com",
        :scheme => :header
)

access_token = OAuth::AccessToken.from_hash(
        consumer,
        :oauth_token => "YOURTOKEN",
        :oauth_token_secret => "YOURTOKENSECRET"
)

response = access_token.get(end_point)


"Response Body: " + response.body

end
