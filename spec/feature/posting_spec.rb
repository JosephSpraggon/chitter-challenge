feature 'Posting a Peep' do

  scenario 'Can post a Peep to Chitter' do
    visit ('/peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
    expect(page).to have_content 'Hello Chitter'
  end

  scenario 'Peep shows the time that it was posted' do
    visit ('/peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
    expect(page).to have_content 'Hello Chitter'
    # page.find('#Peep', :visible => true)
  end

end