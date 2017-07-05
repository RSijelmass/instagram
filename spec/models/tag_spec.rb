require 'rails_helper'

RSpec.describe Tag, type: :model do
	it 'finds a hashtag in a message' do
		message = 'Great weather! #summer'
		expect(Tag.find_hashtag(message)).to eq ['summer']
	end

	it 'finds multiple hashtags in a message' do
		message = 'Such a good salad #healthy #bodyisatemple'
		expect(Tag.find_hashtag(message)).to eq ['healthy', 'bodyisatemple']
	end

	it 'returns nil if no hashtags are given' do
		message = 'I hate hashtags.'
		expect(Tag.find_hashtag(message)).to eq nil
	end
end
