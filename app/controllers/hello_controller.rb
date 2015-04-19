class HelloController < ApplicationController
  def index

  	@client = Tumblr::Client.new({
	  :consumer_key => 'SJgBbTfENmXNHUVY65IunYM414JzHSaV4KsHsoRgtEhWOLaJzh',
	  :consumer_secret => '8tme5ROBYzstvG8Ck7pFfVFqHwLPdKe3xffABEYQGHHqBualYz',
	  :oauth_token => 'HabwQRIB9tRqAzXwzDcEsu8ywglEdiL9qOeHv8NCyv1CVRY4jx',
	  :oauth_token_secret => '54xDM3k3UWlHOiQLlVfdhDRoSAqYfNwLLcsRII74dRv1W61hqx'
	})

	# Tumblr.configure do |config|
	#   config.consumer_key = "SJgBbTfENmXNHUVY65IunYM414JzHSaV4KsHsoRgtEhWOLaJzh"
	#   config.consumer_secret = "8tme5ROBYzstvG8Ck7pFfVFqHwLPdKe3xffABEYQGHHqBualYz"
	#   config.oauth_token = "HabwQRIB9tRqAzXwzDcEsu8ywglEdiL9qOeHv8NCyv1CVRY4jx"
	#   config.oauth_token_secret = "54xDM3k3UWlHOiQLlVfdhDRoSAqYfNwLLcsRII74dRv1W61hqx"
	# end

	require 'tumblr_client'

	# @client = Tumblr::Client.new(:client => :httpclient)
	
	@result = @client.posts('allthethingsinallthedays.tumblr.com')["posts"]

  end
end
