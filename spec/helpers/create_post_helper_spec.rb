def create_post(title = 'Test Post!')
	click_link 'New Post'
	fill_in 'Title', with: title
	click_button 'Save Post'
end
