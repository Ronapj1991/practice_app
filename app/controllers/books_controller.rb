class BooksController < ApplicationController
    def create
        @author = Author.find(params[:author_id])
        @book = @author.books.create(book_params)
        redirect_to author_path(params[:author_id])
    end
    
    private
    def book_params
        params.require(:book).permit(:name)
    end
end
