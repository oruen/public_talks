# encoding: utf-8

get "/" do
  slim :index
end

get "/apps/:app" do
  slim :"apps/#{params[:app]}/index"
end
