class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user =  User.new
    end

    def create
        puts "hello"
        @user = User.create(name: params[:name])
        # @user = User.create(user_params)
        redirect_to "/users"
    end

    def show
        render json: User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        # @user.update(updateuser)
        @user.update(name: params[:name])
        redirect_to "/users"
    end    

    def total
        render json: { total: User.count }
    end

    # private
    # def updateuser
    #     params.require(:user).permit(:name)
    # end    
end
