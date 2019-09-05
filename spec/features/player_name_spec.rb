feature "names form" do
  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('Player: James - hit points: 10 Player: Mike - hit points: 10')
  end
end
