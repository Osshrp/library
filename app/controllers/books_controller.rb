class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :delete]
  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def update
    @book.update(book_params)
    respond_with(@book)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    respond_with(@book)
  end

  def destroy
    respond_with(@book.destroy)
  end

  private

  def book_params
    params.require(:book).permit(:title, :number)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
