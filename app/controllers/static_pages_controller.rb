class StaticPagesController < ApplicationController
  def menu
    @sections = Section.all

    if params[:section_id].present?
      @section = Section.where(id: params[:section_id]).first
      @food_items = @section.food_items
    elsif params[:search_food]
      @food_items = FoodItem.search(params[:search_food]).order("created_at DESC")
    else
      @food_items = FoodItem.all
    end

    if params[:sort_option]
      @food_items = @food_items.order("#{params[:sort_option]} #{params[:sort_by]}")
    end
  end

  def contact
  end

end
