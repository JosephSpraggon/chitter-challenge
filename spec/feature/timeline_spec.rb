feature 'Chitter timeline' do
  scenario 'displays a single peep on timeline' do
    visit ('/peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
    expect(page).to have_content 'Hello Chitter'
  end

  scenario 'displays multiple peeps on timeline' do
    visit ('/peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'

    visit ('/peep')
    fill_in :peep, with: 'Second peep'
    click_button 'Peep'

    expect(page).to have_content 'Hello Chitter'
    expect(page).to have_content 'Second peep'
  end

  scenario 'display peeps in descending chronological order, newest first' do
    visit ('/peep')
    fill_in :peep, with: 'Hello Chitter'
    click_button 'Peep'
    visit ('/peep')
    fill_in :peep, with: 'Latest Peep'
    click_button 'Peep'
    expect(page.text.index('Latest Peep')).to be < page.text.index('Hello Chitter')
  end

end