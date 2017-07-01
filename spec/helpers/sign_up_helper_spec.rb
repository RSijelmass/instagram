def sign_up(email_address = 'test@test.com')
	visit '/'
	click_link 'Sign up'
	fill_in 'user_email', with: email_address
	fill_in 'user_password', with: 'secret' 
	click_button 'Sign up'
end
