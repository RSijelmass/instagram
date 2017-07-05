class Tag < ApplicationRecord
	has_many :posts_tags
	has_many :posts, through: :posts_tags

	def self.find_hashtag(message)
		hashes = []
		message.split(' ').each do |word| 
			hashes << word[1...word.length] if word[0] == '#'
		end
		hashes.length > 0 ? hashes : nil
	end
end
