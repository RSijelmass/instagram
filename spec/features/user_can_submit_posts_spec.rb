describe 'Submit a new post' do
	
	it 'takes in a title' do
		visit '/posts'
		click_link 'New Post'
		fill_in 'Title', with: 'This is a title!'
		click_button 'Submit'

		expect(page).to have_content 'This is a title!'
	end
end
