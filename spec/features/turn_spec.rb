feature 'switching turn -' do

  scenario "first turn is displayed " do
    sign_in_and_play
    expect(page).to have_content('Current turn: James')
  end

   scenario "turn changes following attack" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content('Current turn: Mike')
  end 
end 
