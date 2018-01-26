class LaughTracksApp < Sinatra::Base

get "/" do
  erb :dashboard
end

get "/comedians" do
  @comedians = Comedian.all
  @specials = Special.all
  erb :index
end

get "/comedians?:age" do
  @comedians = Comedian.where(:age)
  erb :show
end

end
