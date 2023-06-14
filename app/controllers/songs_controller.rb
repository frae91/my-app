class SongsController < ApplicationController
    def index
        songs = Song.all
        render json: songs, except: [:created_at, :updated_at,:id]
    end

    def show
        song = Song.find_by_id( params[:id] )
        render json: song, except: [:created_at, :updated_at,:id]
    end

    def show_songs_per_duration
        songs = Song.find_by_sql("SELECT * FROM songs WHERE duration >= #{params[:duration]}")
        render json: songs, except: [:created_at, :updated_at,:id]
    end
end

# provide a route to get a single song based on its id
# for get methods, display only the title, artist, album, and duration
# route: songs/duration/:duration
# this will return all songs that are at least the duration value
