require('spec_helper')

describe('adding a brand path', {:type => :feature}) do
  it('allows a user to add a new brand') do
    visit('/')
    fill_in('brand_name', :with =>"Nike")
    click_on('add_brand')
    expect(page).to have_content('Nike')
  end
end


describe('add a brand to a store path', {:type => :feature}) do
  it('allows a user to add a brand to a store') do
    visit('/')
    Brand.create({:name => 'Nike'})
    fill_in('name', :with => 'Rack Room')
    check('Nike')
    click_on('Rack Room')
    expect(page).to have_content('Nike')
  end
end
