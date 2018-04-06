class AboutsController < ApplicationController
  def show
    @abouts = About.first
  end
end
