class User < ActiveRecord::Base
    def index
        # if errors?
        #   flash[:error] = "You have errors"
        #   redirect_to '/users/' #pathing will be explained later
        # else
        #   flash[:success] = "You did it!"
        #   redirect_to '/users/'
        # end
    end
end
