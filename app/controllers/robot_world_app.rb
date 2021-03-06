class RobotWorldApp < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  
  get '/' do
    erb :dashboard
  end

  get '/robots' do
    @robots = ["robot1","robot2","robot3"]
    erb :index
  end

  get '/robots/new' do
    erb :new
  end

  post '/robots' do
    "<p>Params: #{params}</p> <p>Task params: #{params[:robot]}</p>"
  end
end