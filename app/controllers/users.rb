get '/user/register' do
  erb :'user/register'
end

post '/user/register' do
  @user = User.find_or_create_by(name: params[:user][:name])
  @user.username= params[:user][:username]
  # @current_user.save
  # if @current_user.errors.empty?
  #   session[:id] = @current_user.id
  #   erb :'user/home'
  # else
  #   @errors = @current_user.errors
  #   erb :'/user/register'
  # end
  @user.save
  erb :'/user/home'
end

post '/user/login' do
  @user = User.find_by_name(params[:user][:name])
  erb :'user/home'
end

get '/user/home' do
  erb :'user/home'
end
