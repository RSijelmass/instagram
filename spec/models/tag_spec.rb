require 'rails_helper'

RSpec.describe Tag, type: :model do
	it 'finds a hashtag in a message' do
		message = 'Great weather! #summer'
		expect(Tag.find_hashtag(message)).to eq 'summer'
	end
end
