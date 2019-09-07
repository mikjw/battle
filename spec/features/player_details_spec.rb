feature "names form -" do
  scenario "expect player names & hit points" do
    sign_in_and_play
    message = 'Player: James - hit points: 100 Player: Mike - hit points: 100'
    expect(page).to have_content(message)
  end
end
