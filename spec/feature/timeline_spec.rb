feature 'Chitter timeline' do
  scenario 'displays peeps in chronolgoical order' do
    visit ('/post_peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
    expect(page).to have_content 'Hello Chitter'
  end
end