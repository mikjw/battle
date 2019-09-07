feature "names form -" do
  scenario "expect player names & hit points" do
    sign_in_and_play
    expect(page).to have_content('Player: James - hit points: 100 Player: Mike - hit points: 100')
  end
end
