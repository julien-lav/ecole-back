class StaticPagesController < ApplicationController

  def admin
      redirect_to info_page_path unless logged_in? && current_user.role == true
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
    @infos = Info.page(params[:page]).per(2).order("created_at DESC")
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

  def la_formation_1_1
  end

  def la_formation_2_1
  end

  def la_formation_1_2
  end

  def la_formation_2_2
  end

  def la_formation_1_3
  end

  def la_formation_2_3
  end

  def la_formation_1_4
  end

  def la_formation_2_4
  end

  def promo_2018
  end

  def realisateurs
  end

  def revues
  end

  def calendar
  end
end
