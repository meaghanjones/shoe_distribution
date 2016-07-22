require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all()
  erb(:index)
end

post '/stores/new' do
  name = params.fetch("name")
  Store.create({:name => name, :id => nil})
redirect("/")
end
