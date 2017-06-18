class StaticPagesController < ApplicationController
  def menu
    @sections = Section.all

    if params[:section_id]
      @section = Section.where(id: params[:section_id]).first
      @food_items = @section.food_items
    elsif params[:search_food]
      @food_items = FoodItem.search(params[:search_food]).order("created_at DESC")
    else
      @food_items = FoodItem.all
    end
  end

  def contact
  end

end
