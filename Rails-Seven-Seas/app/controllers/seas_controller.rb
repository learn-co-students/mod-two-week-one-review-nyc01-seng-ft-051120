class SeasController < ApplicationController
  #define your controller actions here
  # before_action :set_sea, only: :show

  def welcome
  end

  def index 
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
  end

  def create
    @sea = Sea.create(sea_params)

  def show
    @sea = Sea.find(sea_params[:id])
  end



  # def set_sea
  #   @sea = Sea.find(sea_params[:id])
  # end

  
  post "/seas" do
    @sea = Sea.new(sea_params)
    @sea.save
    redirect to "/seas/#{@sea.id}"
  end

  # get "/seas/:id/edit" do
  #   @sea = Sea.find(sea_params[:id])

  #   erb :'edit.html'
  # end

  # patch "/seas/:id" do
  #   @sea = Sea.find(sea_params[:id])
  #   sea_params.delete("_method")
  #   sea_params[:has_mermaids] ||= false
  #   @sea.update(sea_params)
  #   redirect to "/seas/#{@sea.id}"
  # end

  # delete "/seas/:id" do
  #   @sea = Sea.find(sea_params[:id])
  #   @sea.destroy
  #   redirect to "/seas"
  # end
  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end

