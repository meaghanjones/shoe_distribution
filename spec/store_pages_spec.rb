require('spec_helper')

describe('adding a store path', {:type => :feature}) do
  it('allows a user to add a new store') do
    visit('/')
    fill_in('name', :with =>"Outlet")
    click_on('Add Store')
    expect(page).to have_content('Outlet')
  end
end


describe('deleting a store path', {:type => :feature}) do
  it('allows a user to delete a store') do
    visit('/')
    fill_in('name', :with =>"Outlet")
    click_on('Add Store')
    click_link('Outlet')
    click_on('Delete')
    expect(page).to have_content('List of current Shoe Stores')
  end
end
