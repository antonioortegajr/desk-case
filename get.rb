require "oauth"

subdomain = 'Your_Subdomian'
case_number = '2662'
url = "https://Your_Subdomian.desk.com/api/v2/cases/search\?q=case:"

end_point = url + case_number

consumer = OAuth::Consumer.new(
        "API_CONSUMER_KEY",
        "API_CONSUMER_SECRET",
        :site => "https://yoursite.desk.com",
        :scheme => :header
)

access_token = OAuth::AccessToken.from_hash(
        consumer,
        :oauth_token => "ACCESS_TOKEN",
        :oauth_token_secret => "ACCESS_TOKEN_SECRET"
)

response = access_token.get(end_point)


puts response.body
