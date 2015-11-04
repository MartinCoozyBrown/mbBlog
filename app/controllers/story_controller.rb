class StoryController < ApplicationController
  
  def index
    @stories=Story.all
  end

  def create
    @stories=Story.create(safe_url_params)
    redirect_to '/'
  end

  def new
    @stories=Story.new
    #redirect_to story_index_path(@stories.id)
  end

  def edit
    @stories=Story.new(safe_url_params)
  end

  def show
    @stories=Story.all
  end
end
