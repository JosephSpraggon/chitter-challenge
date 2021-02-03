feature 'Testing homepage' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Chitter'
  end

  scenario 'Homepage buttons work' do
    visit('/')
    click_link 'Create a Peep'
    expect(current_path).to eq '/peep'
    visit('/')
    click_link 'Go to timeline'
    expect(current_path).to eq '/timeline'
  end

end