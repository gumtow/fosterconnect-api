class RegistrationsController < ApplicationController
    include CurrentUserConcern
    # def index
    #     @user = User.all
    
    #     render json: @user
    #   end

    def create
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation']
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render.json; { status: 500 }
        end

    end

    def update
        p User.find(params[:id])
        user = User.find(params[:id])
        user.update(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation']
        )

        # if user
        #     session[:user_id] = user.id
        #     render json: {
        #         status: :updated,
        #         user: user
        #     }
        # else
        #     render.json; { status: 500 }
        # end
        
    end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_user
  @user = User.find(params[:id])
end