describe 'Submit a new post' do
	it 'takes in a title' do
		sign_up
		create_post('This is a title!')
		expect(page).to have_content 'This is a title!'
	end

	it 'displays the newest post at the top' do
		sign_up
		create_post 'First'
		create_post 'Second'
		expect(page.body.index('Second') < page.body.index('First')).to be true
	end

	it 'contains a date time stamp' do
		sign_up
		create_post
		time = Time.now.strftime('%-d/%m%Y %H:%M')
		expect(page).to have_content time
	end

	it 'contains an image' do
		#...
	end
end
