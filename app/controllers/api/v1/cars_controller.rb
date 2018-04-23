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
      car = current_user.cars.build(car_params)
      if car.save
        render json: car, status: 200
      else
        render json: { errors: car.errors }, status: 500
      end
    end

    # PUT /v1/cars
    def update
      car = current_user.cars.find(params[:id])
      if car.update(car_params)
        render json: car, status: 200
      else
        render json: { errors: car.errors }, status: 500
      end
    end

    # DELETE /v1/cars/{id}
    def destroy
      product = current_user.cars.find(params[:id])
      product.destroy
      head 204
    end

    def car_params
      params.require(:car).permit(:registratio, :brand, :model, :year, :image, :user)
    end
  end
end