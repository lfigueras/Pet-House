class BodiesController < ApplicationController
    before_action :authenticate_user!
    def new
      @body_markings = Body.new
      
    end

    def create
      @body_markings = Body.new(body_params)
      @body_markings.user_id = current_user.id
		  if @body_markings.save
        redirect_to  user_root_path
      end
    end


    private
    def body_params
      params.require(:body).permit(:coat_color, :fur_type, :eye_color, :length_height, :weight, :age, :special_markings, :user_id)
    end
end
    