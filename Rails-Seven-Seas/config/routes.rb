Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'seas#welcome'
  # get '/seas', to: 'seas#index' 
  # get 'seas/new', to: 'seas#new'
  # get '/seas/:id', to: 'seas#show'
  # # post '/seas/new', to: 'seas#create'
  # get 'seas/:id/edit', to: 'seas#edit'

  resources :seas
  
end
# get "/" do

#   erb :welcome
# end

# get "/seas" do
#   @seas = Sea.all
#   erb :'index.html'
# end

# get "/seas/new" do
#   erb :'new.html'
# end

# get "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   erb :'show.html'
# end

# post "/seas" do
#   @sea = Sea.new(params)
#   @sea.save
#   redirect to "/seas/#{@sea.id}"
# end

# get "/seas/:id/edit" do
#   @sea = Sea.find(params[:id])

#   erb :'edit.html'
# end

# patch "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   params.delete("_method")
#   params[:has_mermaids] ||= false
#   @sea.update(params)
#   redirect to "/seas/#{@sea.id}"
# end

# delete "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   @sea.destroy
#   redirect to "/seas"
# end