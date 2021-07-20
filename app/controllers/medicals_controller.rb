class MedicalsController < ApplicationController
  before_action :authenticate_user!
    def new
        @medical_record = Medical.new
    end
  
    def create
        @medical_info = Medical.new(medical_params)
				@medical_info.user_id = current_user.id
            if @medical_info.save
          redirect_to  user_root_path
        end
      end

      private
    def medical_params
      params.require(:medical).permit(:sterilization, :allergies, :others, :sterilization_date, :clinic, :user_id)
    end
  end
  