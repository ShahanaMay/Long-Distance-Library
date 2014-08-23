class BooksController < ApplicationController

  def index
    @title = "Books"
    @books = Book.all
  end

  def new
    @title = "New Book"
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "Book was successfully saved. Thank you!"
    else
      render :new, alert: "Book was not saved"
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated. Thank you!"
    else
      render :new, alert: "Book was not updated"
    end
  end

  def destroy
    @book = Book.find_by_id(params[:id])
    if @book
      @book.destroy
    end
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_last_name, :author_first_name, :series, :isbn, :illustrator, :genre, :format)
  end

end
