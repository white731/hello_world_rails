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
    #.new makes a new page object in memory
    #.create stores information to database
    @page = Page.new
  end

  def create
    # puts "-------------------"
    # params
    # puts "-------------------"

    @page = Page.new(pages_params)

    if @page.save?
      redirect_to pages_path
    else
      render :new
    end
  end

  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end

  def edit
    #return from here
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  


end
