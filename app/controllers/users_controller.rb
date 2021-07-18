class UsersController < ApplicationController
  before_action :authenticate_user!
    def index
      @body_markings = current_user
      @body =  @body_markings.bodies
      if @body.present?
      @coat_color = @body_markings.bodies[0].coat_color
      @fur_type = @body_markings.bodies[0].fur_type
      @eye_color = @body_markings.bodies[0].eye_color
      @length_height = @body_markings.bodies[0].length_height
      @weight = @body_markings.bodies[0].weight
      @special_markings = @body_markings.bodies[0].special_markings
      end
    end
  end
  