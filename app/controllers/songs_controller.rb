class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
      end


    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)

        if @song.save
            redirect_to "/songs"
        else
            render :new
        end

    end
        

end
