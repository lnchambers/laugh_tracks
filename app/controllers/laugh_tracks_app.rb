class LaughTracksApp < Sinatra::Base

get "/" do
  erb :dashboard
end

get "/comedians" do
  @comedians = Comedian.where(params)
  @specials = Special.all
  erb :index
end

end
