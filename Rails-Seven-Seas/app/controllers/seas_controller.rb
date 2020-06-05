class SeasController < ApplicationController
  #define your controller actions here
  def index
    @seas = Sea.all
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def new
    @sea = Sea.new
    # @sea.name = params[:name]
    # @sea.temperature = params[:name]
    # @sea.bio = params[:name]
    # @sea.image_url = params[:name]
    # @sea.mood = params[:name]
    # @sea.favorite_color = params[:name]
    # @sea.scariest_creature = params[:name]
    # @sea.has_mermaids = params[:name]
    # @sea.save
  end

  def create
    @sea.create(sea_params)
    redirect_to sea_path(@sea)
  end

  def edit

  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

  

end
