class SignupsController < ApplicationController

    def index
        @signups = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.new(signup_params)
        if @signup.valid?
            redirect_to campers_path
          else 
            flash[:errors] = @signup.errors.full_messages 
            redirect_to new_signup_path
          end
    end

     private

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end
end
