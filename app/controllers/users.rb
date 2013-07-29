get '/user/register' do
  erb :'user/register'
end

post '/user/register' do
  @current_user = User.new(
                            firstname: params[:user][:firstname],
                            lastname: params[:user][:lastname],
                            username: params[:user][:username],
                            email: params[:user][:email],
                            password: params[:user][:password],
                            password_confirmation: params[:user][:password_confirmation]
                          )
  @current_user.save
  if @current_user.errors.empty?
    session[:id] = @current_user.id
    erb :'user/home'
  else
    @errors = @current_user.errors
    erb :'/user/register'
  end
end

get '/user/home' do
  erb :'user/home'
end
