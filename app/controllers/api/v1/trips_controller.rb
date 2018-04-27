module Api::V1
  class TripsController < ApiController

    # GET /v1/trips
    def index
      render json: Trip.all
    end

    # GET /v1/trips/{id}
    def show
      render json: Trip.find(params[:id])
    end

    # POST /v1/trips
    def create
      car = current_user.cars.find(params[:car])
      trip = car.trips.new(:departure_time => params[:departure_time],
                           :arrival_time => params[:arrival_time],
                           :car => Car.find(params[:car]),
                           :city_origin_id => City.find(params[:city_origin_id]),
                           :city_destination_id => City.find(params[:city_destination_id]))
      if trip.save
        render json: trip, status: 200
      else
        render json: { errors: trip.errors }, status: 500
      end
    end

    # PUT /v1/trips/{id}
    def update
      car = current_user.cars.find(params[:car])
      trip = car.trips.find(params[:id])
      if trip.update(:departure_time => params[:departure_time],
                     :arrival_time => params[:arrival_time],
                     :car => Car.find(params[:car]),
                     :city_origin_id => City.find(params[:city_origin_id]),
                     :city_destination_id => City.find(params[:city_destination_id]))
        render json: trip, status: 200
      else
        render json: { errors: trip.errors }, status: 500
      end
    end

    # DELETE /v1/trips/{id}
    def destroy
      trip = Trip.find(params[:id])
      trip.destroy
      head 204
    end

    def search_trip
      trips = Trip.search_by_cities(params[:from], params[:to], params[:date])
      render json: trips, status: 200
    end

    def trip_params
      params.require(:trip).permit(:departure_time, :arrival_time, :car, :city_origin_id, :city_destination_id)
    end
  end
end