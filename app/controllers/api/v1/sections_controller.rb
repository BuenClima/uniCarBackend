module Api::V1
  class SectionsController < ApiController

    # GET /v1/sections
    def index
      render json: Section.all
    end

    # GET /v1/sections/{id}
    def show
      render json: Section.find(params[:id])
    end

    # POST /v1/sections
    def create
      car = current_user.cars.find(params[:car])
      trip = car.trips.find(params[:trip])
      section = trip.sections.new(:trip => Trip.find(params[:trip]),
                                  :city_origin_id => City.find(params[:city_origin_id]),
                                  :city_destination_id => City.find(params[:city_destination_id]))
      if section.save
        render json: section, status: 200
      else
        render json: { errors: section.errors }, status: 500
      end
    end

    # PUT /v1/sections/{id}
    def update
      car = current_user.cars.find(params[:car])
      trip = car.trips.find(params[:trip])
      section = trip.sections.find(params[:id])
      if section.update(:trip => Trip.find(params[:trip]),
                        :city_origin_id => City.find(params[:city_origin_id]),
                        :city_destination_id => City.find(params[:city_destination_id]))
        render json: section, status: 200
      else
        render json: { errors: section.errors }, status: 500
      end
    end

    # DELETE /v1/sections/{id}
    def destroy
      section = Section.find(params[:id])
      section.destroy
      head 204
    end

    def section_params
      params.require(:section).permit(:trip, :city_origin_id, :city_destination_id)
    end
  end
end