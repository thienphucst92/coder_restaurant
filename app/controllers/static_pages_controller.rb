class StaticPagesController < ApplicationController
  def menu
    @sections = Section.all
  end

  def contact
  end

end
