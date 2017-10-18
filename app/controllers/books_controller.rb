class BooksController < ApplicationController
  def index
    # userのbookだけ表示？
    @books = Book.all
  end

  def show
    @book = @book.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
