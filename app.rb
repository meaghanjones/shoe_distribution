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

post '/brands' do
  name = params.fetch("brand_name")
  Brand.create({:name => name, :id => nil})
  redirect("/")
end
