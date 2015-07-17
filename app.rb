require './lib/storage'

get '/' do
  erb :index
end

post '/result' do
  id = Storage.save(params[:link])
  @shortened = "short.la/#{id}"
  erb :result
end

get '/short.la/:id' do
  redirect Storage.get(params[:id])
end
