module Api::V1
  class CarsController < ApiController

    # GET /v1/cars
    def index
      render json: Car.all
    end

    # GET /v1/cars/{id}
    def show
      render json: Car.find(params[:id])
    end

    # POST /v1/cars
    def create
      car = current_user.cars.build(:registratio => params[:registratio],
                                    :brand => params[:brand],
                                    :model => params[:model],
                                    :seats => params[:seats],
                                    :year=> params[:year],
                                    :image => params[:image])
      if car.save
        render json: car, status: 200
      else
        render json: { errors: car.errors }, status: 500
      end
    end

    # PUT /v1/cars
    def update
      car = current_user.cars.find(params[:id])
      if car.update(:registratio => params[:registratio],
                    :brand => params[:brand],
                    :model => params[:model],
                    :seats => params[:seats],
                    :year=> params[:year],
                    :image => params[:image])
        render json: car, status: 200
      else
        render json: { errors: car.errors }, status: 500
      end
    end

    # DELETE /v1/cars/{id}
    def destroy
      car = current_user.cars.find(params[:id])
      car.destroy
      head 204
    end

    def car_params
      params.permit(:registratio, :brand, :model, :year, :image, :user, :seats)
    end
  end
end