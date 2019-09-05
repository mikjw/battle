feature "names form" do
  scenario "expect player names" do
    sign_in_and_play
    expect(page).to have_content('Player: James - hit points: 100 Player: Mike - hit points: 100')
  end
end
