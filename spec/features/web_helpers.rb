def sign_in_and_play
  visit('/')
      fill_in 'first_player', with: 'Player 1'
      fill_in 'second_player', with: 'Player 2'
      click_button 'Submit'
end