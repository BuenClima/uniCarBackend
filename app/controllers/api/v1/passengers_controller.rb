module Api::V1
  class PassengersController < ApiController

    # GET /v1/passengers
    def index
      render json: Passenger.all
    end

    # GET /v1/passengers/{id}
    def show
      render json: Passenger.find(params[:id])
    end

    # POST /v1/passengers
    def create
      passenger = Passenger.new(:user_id => params[:user], :trip_id => params[:trip])
      if passenger.save
        render json: passenger, status: 200
      else
        render json: { errors: passenger.errors }, status: 500
      end
    end

    # PUT /v1/passengers/{id}
    def update
      passenger = Passenger.find(params[:id])
      if passenger.update(passenger_params)
        render json: passenger, status: 200
      else
        render json: { errors: passenger.errors }, status: 500
      end
    end

    # DELETE /v1/passengers/{id}
    def destroy
      passenger = Passenger.find(params[:id])
      passenger.destroy
      head 204
    end

    def passenger_params
      params.require(:passenger).permit(:user, :trip)
    end
  end
end