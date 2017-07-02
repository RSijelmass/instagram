require 'rails_helper'

RSpec.describe PostTag, type: :model do
	it 'creates a link between posts and tags' do
=begin
		post = Post.create(title: 'Image #image')
		post.save
		p post.id
		Post.find_tag(post.title, post.id)
		
		p PostTag.all.length
		expect(PostTag.all.length).to eq 1
=end
	end
end
