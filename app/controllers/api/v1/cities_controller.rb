module Api::V1
  class CitiesController < ApiController

    # GET /v1/cities
    def index
      render json: City.all
    end

    # GET /v1/cities/{id}
    def show
      render json: City.find(params[:id])
    end

    # POST /v1/cities
    def create
      city = City.new(city_params)
      if city.save
        render json: city, status: 200
      else
        render json: { errors: city.errors }, status: 500
      end
    end

    # PUT /v1/cities/{id}
    def update
      city = City.find(params[:id])
      if city.update(city_params)
        render json: city, status: 200
      else
        render json: { errors: city.errors }, status: 500
      end
    end

    # DELETE /v1/cities/{id}
    def destroy
      city = City.find(params[:id])
      city.destroy
      head 204
    end

    def city_params
      params.require(:city).permit(:name)
    end
  end
end