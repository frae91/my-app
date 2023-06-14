class ApplicationController < ActionController::Base
    def index
        render inline: "<h1><a href='http://localhost:3000/students'>Students</a></h1><h1><a href='http://localhost:3000/books'>Books</a></h1>"
    end
end
