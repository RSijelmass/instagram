describe 'Submit a new post' do
	
	it 'takes in a title' do
=begin
		visit '/'
		click_link 'Sign up'
		fill_in 'user_email', with: 'test@test.com'
		fill_in 'user_passsword', with: 'test'
		click_button 'Sign up'
		p "page:"
		p page
		visit '/posts'
		click_link 'New Post'
		fill_in 'Title', with: 'This is a title!'
		click_button 'Submit'

		expect(page).to have_content 'This is a title!'
=end
	end
end
