require 'sinatra'

get '/' do
  if params['minute'] && params['hour']
    File.open('alarms', 'w+') { |file| file << "#{params['hour']}#{params['minute']}"}
  end
  erb :'index.html'
end
