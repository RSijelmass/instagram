class Tag < ApplicationRecord
	has_many :posts_tags
	has_many :posts, through: :posts_tags

	def self.find_hashtag(message)
		message.split(' ').each do |word| 
			return word[1...word.length] if word[0] == '#'
		end
		return nil
	end
end
