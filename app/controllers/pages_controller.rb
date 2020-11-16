class PagesController < ApplicationController
  # street officer directing traffic
  # just grab all pages (generally for crud but all the time)
  def index
    @pages = Page.all
    # rails convention... if you don't explicitly tells rails what to return here
    # it will automatically look in views/pages/index.html.erb and return that
  end

  def show
    @page = Page.find(params[:id])
     # rails convention... if you don't explicitly tells rails what to return here
    # it will automatically look in views/pages/show.html.erb and return that
  end

  def new
  end
end
