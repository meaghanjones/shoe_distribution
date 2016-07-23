require('spec_helper')

describe('adding a brand path', {:type => :feature}) do
  it('allows a user to add a new brand') do
    visit('/')
    fill_in('name', :with =>"Nike")
    click_on('Add Brand')
    expect(page).to have_content('Nike')
  end
end


# describe('adding a brand to a store', {:type => :feature}) do
#   it('allows a user to add a brand to a store') do
#     visit('/')
#     fill_in('name', :with =>"Outlet")
#     click_on('Add Brand')
#     click_link('Outlet')
#     click_on('Delete')
#     expect(page).to have_content('#')
#   end
# end
#
# describe('displaying a brand on associated store page ', {:type => :feature}) do
#   it('allows a user to delete a store') do
#     visit('/')
#     fill_in('name', :with =>"Outlet")
#     click_on('Add Store')
#     click_link('Outlet')
#     click_on('Delete')
#     expect(page).to have_content('List of Brands')
#   end
# end
