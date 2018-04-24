module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      render json: User.all
    end

    # GET /v1/users/{id}
    def show
      render json: User.find(params[:id])
    end

    # PUT /v1/users/{id}
    def update
      if current_user.update(user_params)
        render json: current_user, status: 200
      else
        render json: { errors: current_user.errors }, status: 500
      end
    end

    def user_params
      params.permit(:image,:last_name, :name, :birthdate)
    end
  end
end