feature 'Hit points' do
  scenario 'seeing player 2s health' do
    sign_in_and_play
    expect(page).to have_content 'Chris: 100HP Attack'
  end
end
