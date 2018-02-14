class StaticPagesController < ApplicationController

  def admin
      render 'info_page' unless logged_in? && current_user.role == true
  end

  def about
  end

  def contact
  end

  def home
  end

  def help
  end

  def info_page
  end

  def year_one
  end

  def year_two
  end

  def year_three
  end

  def year_four
  end

  def year_five
  end

  def accueil
  end

  def la_formation
  end

  def calendar
  end
end
