class HighlightsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
   @highlights_text = params['highlights_text']
   puts @highlights_text.delete(' ').split('|')
   puts "aaaa"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
