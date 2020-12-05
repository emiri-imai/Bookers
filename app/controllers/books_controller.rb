class BooksController < ApplicationController

  def top
  end

  def index
    @books = Book.all
    @book = Book.new


  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @book.valid?
  @book.errirs.any?
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Book was successfully created."

    redirect_to '/books/show'
    else
      @book = book
      @books = Book.all
      flash[:alert] = "errors"


      render :index
    end

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to '/books'
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
