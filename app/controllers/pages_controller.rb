class PagesController < ApplicationController
  before_filter :disable_nav, only: [:landing, :home_page]

  def landing

  end

  def about
    @disable_nav = true
  end

end
