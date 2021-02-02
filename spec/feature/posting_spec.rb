feature 'posting a peep' do
  scenario 'Can post a peep to chitter' do
    visit ('/post_peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
  end
end