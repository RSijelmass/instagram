describe 'Post has user' do
	it 'displays a user email with each post' do
		sign_up
		create_post
		expect(page).to have_content 'test@test.com posted:'
	end
end
