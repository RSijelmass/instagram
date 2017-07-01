describe 'Post has user' do
	it 'displays a user email with each post' do
=begin
		visit '/'
		click_link 'Sign up'
		fill_in 'user_email', with: 'test@test.com'
		fill_in 'user_password', with: 'secret'
		click_button 'Sign up'
		p page
		click_link 'New Post'
		fill_in 'Title', with: 'Test post!'
		click_button 'Submit'
		expect(page).to have_content 'test@test.com posted:'
=end
	end
end
