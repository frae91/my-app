class BookController < ApplicationController
    def index
        @books = Book.all
    end

    def get_book
        id = params[:id]
        book = Book.find_by_id(id)

        render json: book, except: [:created_at, :updated_at], methods: [:summary]
    end

    def show_books
        books = Book.find_by_sql("SELECT * FROM books LIMIT #{params[:noOfBooks]}")
        render json: books
    end
end