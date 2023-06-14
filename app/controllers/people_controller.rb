class PeopleController < ApplicationController
    def index
        people = Person.all
        render json: people
    end

    def show
        person = Person.find_by_id( params[:id] )
        render json: person
    end
end
