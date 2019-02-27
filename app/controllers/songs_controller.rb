class SongsController < ApplicationController


    def new
        @song = Song.create

        
    end
end
