class CollarsController < ApplicationController
  def index
    @collars = Collar.all

    # Filter by color
    @collars = @collars.where(color: params[:format]) if params[:format].present?

    # Searchbar usage
    # @collars = @collars.search_color(params[:query]) if params[:query].present?
  end

  def show
    @collar = Collar.find(params[:id])
  end

  # private

  # def collar_params
  #   params.require(:collar).permit(:name, :color, :secondary_color, :image_url, :size)
  # end
end
