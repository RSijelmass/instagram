describe 'Submit a new post' do
	
	it 'takes in a title' do
		sign_up
		create_post('This is a title!')
		expect(page).to have_content 'This is a title!'
	end
end
