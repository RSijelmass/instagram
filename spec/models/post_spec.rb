describe 'Post' do
	let(:post) { Post.create(title: 'Test title') }

	it 'contains a title' do
		expect(post.title).to eq 'Test title'
	end
end
