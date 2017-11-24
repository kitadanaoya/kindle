class HighlightsController < ApplicationController
  def index
  end

  def show
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