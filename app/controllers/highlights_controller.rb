class HighlightsController < ApplicationController
  def index
  end

  def show
    @highlight = Highlight.find(params[:id])
    @like = Like.new()
  end

  def new
  end

  def create
    @highlights_text = params['highlights_text']

    Highlight.create_from_highlights_text(@highlights_text)

  end

  def edit
  end

  def update
  end

  def destroy
  end
end