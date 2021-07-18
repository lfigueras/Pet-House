class AppointmentsController < ApplicationController
  def show
    @appointments = Appointment.all
    @appointment = @appointments[0]
  end
    def new
      @appointments = Appointment.new
    end
  
    def create
      @appointments = Appointment.new(appointment_params)
      @appointments.user_id = current_user.id
		  if @appointments.save
        redirect_to  user_root_path
      end
    end
    def destroy
     
      @appointment = Appointment.find_by(params[:id])
      @appointment.destroy
      redirect_to appointments_path
    end
    private
    def appointment_params
      params.require(:appointment).permit(:owner_name, :pet_name, :reason, :date, :time, :phone_number, :additional_information, :user_id)
    end
  end
  