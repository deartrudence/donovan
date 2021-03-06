task :update_feed => :environment do

	@tweets = $client.user_timeline 
	@tweets.first(4).each_with_index do |tweet, index|
	  index_plus_one = index + 1
	  this_tweet = Tweet.where(id: index_plus_one).first_or_initialize
	  this_tweet.update(text: tweet.text, url: tweet.url.to_s)
	  this_tweet.save
	end 

	@instas = Instagram.user_recent_media(@triumph_capital, {:count => 15})
	@instas.first(4).each_with_index do |insta, index|
	  index_plus_one = index + 1
	  this_insta = Gram.where(id: index_plus_one).first_or_initialize({text: insta.caption.text, image_url: insta.images.standard_resolution.url})
	  this_insta.update({text: insta.caption.text, image_url: insta.images.standard_resolution.url, url: insta.link})
	  this_insta.save
	end 

	puts Tweet.first.text
	
end