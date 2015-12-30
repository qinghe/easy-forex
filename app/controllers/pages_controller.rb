class PagesController < ApplicationController
  before_filter :disable_nav, only: [:landing, :about]

  def landing

  end

  def about

  end

end
