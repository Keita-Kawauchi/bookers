 class BooksController < ApplicationController
   def top
   end

   def create
     @book=Book.new(book_params)
     if @book.save
      redirect_to book_path(@book)
      flash[:notice] = "successfully"
     else @books=Book.all
       render action: :index
     end
   end

   def new
     @book=Book.new
   end

   def edit
     @book=Book.find(params[:id])

   end

   def index
     @book=Book.new
     @books=Book.all
   end

   def show
    @book=Book.find(params[:id])
   end

   def update
     @book=Book.find(params[:id])
     if @book.update(book_params)
      flash[:notice] = "successfully"
      redirect_to book_path(@book)
     else
      render "edit"
     end
   end

   def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to books_path
   end

   private
   def book_params
     params.require(:book).permit(:title, :body)
   end
 end
