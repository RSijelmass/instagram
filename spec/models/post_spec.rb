describe 'Post' do
	let(:post) { Post.create(title: 'Test title') }

	it 'contains a title' do
		expect(post.title).to eq 'Test title'
	end


	# how to create a user for underlying tests? Otherwise post can't be saved

	it 'stores tags in the database' do
		title = 'some title #testing'
		post = Post.create(title: title)
		#expect { post.find_tag(title) }.to change { PostTag.count }.by 1
	end

	it 'saves the title with a clickable tag link' do
		title = 'some title #testing'
		post = Post.create(title: title)
		p post
	end
end
