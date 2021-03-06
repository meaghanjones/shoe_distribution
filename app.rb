require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end

get '/stores/:id' do
  @store = Store.find(params.fetch("id").to_i())
  @brands = Brand.all()
  erb(:store)
end

post '/stores/new' do
  name = params.fetch("name")
  Store.create({:name => name, :id => nil})
  redirect("/")
end

delete '/stores/:id/delete'  do
  @store = Store.find(params.fetch("id").to_i())
  @store.destroy()
  redirect("/")
end

patch '/stores/:id' do
  name = params.fetch("store_name")
  store = Store.find(params.fetch("id").to_i())
  store.update({:name => name})
  redirect('/stores/#{store.id}')
end

post '/brands' do
  name = params.fetch("brand_name")
  Brand.create({:name => name})
  redirect("/")
end

patch '/add_brands_to_store' do
  store_id = params.fetch("brands_in_this_store").to_i()
  store = Store.find(store_id)
  brands_ids = params.fetch("brands_ids")
  store.update({:brand_ids => brands_ids})
  redirect('/')
end
