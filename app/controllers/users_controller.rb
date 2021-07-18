class UsersController < ApplicationController
  before_action :authenticate_user!
    def index
      @user = current_user
      @body =  @user.bodies
      @medical = @user.medicals
      if @medical.present?
        @sterilization = @user.medicals[0].sterilization
        @allergies = @user.medicals[0].allergies
        @others = @user.medicals[0].others
        @sterilization_date = @user.medicals[0].sterilization_date
        @clinic = @user.medicals[0].clinic

      end


      if @body.present?
      @coat_color = @user.bodies[0].coat_color
      @fur_type = @user.bodies[0].fur_type
      @eye_color = @user.bodies[0].eye_color
      @length_height = @user.bodies[0].length_height
      @weight = @user.bodies[0].weight
      @special_markings = @user.bodies[0].special_markings
      end
    end
  end
  