class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        render json: sightings, :include => {
            :bird => {:only => [:name, :species]}, 
            :location => {:except => [:updated_at]}
        }
      end 

end
