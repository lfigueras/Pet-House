class ApplicationController < ActionController::Base
 
    before_action :configure_permitted_parameters, if: :devise_controller?
   
    def services
      
    end

    def contact
  
    end

    

    

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:pet_name, :owner, :contact, :address, :breed, :gender, :birth_date])
      devise_parameter_sanitizer.permit(:account_update,  keys:  [:pet_name, :owner, :contact, :address, :breed, :gender, :birth_date])
    end
end
