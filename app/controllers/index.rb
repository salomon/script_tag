get '/' do
  @roles = dice_roles.roles
  @five_roles = @roles.sample(5)
  erb :index
end

post '/roll' do
  dice_roles.roll!
  redirect to '/'
end

get '/roles' do
  content_type :json
  dice_roles.roles.to_json
end
