class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  
  def index
    @books = Book.all.order(created_at: :asc)
    if params[:id].present?
      set_user
    else
      @book= Book.new
    end
  end

  def create
    @books = Book.all.order(created_at: :asc)
    @book = Book.new(book_params)
    respond_to do |format|
      if @book.save
        format.html { redirect_to  @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :index }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
