class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :new_book, only: [:show, :index]
  def show
  	@book = Book.find(params[:id])
  end

  def index
  	@books = Book.all
  end

  def create
    @new_book = Book.new(book_params)
    @new_book.user_id = current_user.id
  	if @new_book.save
  		redirect_to @new_book, notice: "You have creatad book successfully."
  	else
  		@books = Book.all
      flash[:danger] = @new_book.errors.full_messages
  		render 'index'
  	end
  end

  def edit
  	@book = Book.find(params[:id])
      if current_user.id != @book.user_id
      redirect_to books_path
      end
  end



  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
  		redirect_to @book, notice: "You have updated book successfully."
  	else
  		render "edit"
  	end
  end

  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to books_path, notice: "You have destroyed book successfully."
  end

  private

  def book_params
  	params.require(:book).permit(:title,:body)
  end

  def new_book
    @new_book = Book.new
  end
end
