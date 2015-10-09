def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@exemple.org' 
  fill_in :user_username, :with => 'nina' 
  fill_in :user_password, :with => 'secret123' 
  fill_in :user_password_confirmation, :with => 'secret123' 

  click_button 'Sign up'  
end