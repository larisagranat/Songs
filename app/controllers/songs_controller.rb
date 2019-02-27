class SongsController < ApplicationController


    def edit 
    @song = Song.find(params[:id]) 
    end

    def update
        @song = Song.find(params[:id])

        if @song.update_attributes(songs_params)
            redirect_to "/songs/#{@song.id}"
        else
            render :edit
        end
    end

    def index
        @songs = Song.all
    end

    private
        def songs_params
            params.require(:song).permit(:title, :singer,  :genre, :picture)
        end
end
