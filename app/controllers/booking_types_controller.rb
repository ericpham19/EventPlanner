class BookingTypesController < ApplicationController
  before_action :set_booking_type, only: %i[ show edit update destroy ]

  
  def index
    @booking_types = BookingType.all
  end

 
  def show
  end

  def new
    @booking_type = BookingType.new
  end

  
  def edit
    
  end

 
  def create
    @booking_type = BookingType.new(booking_type_params)
    if @booking_type.save
     redirect_to booking_type_url(@booking_type)
     flash[:notice] = "Booking type was successfully created." 
    else
      flash.now[:alert] = "Please try again"
      render :new
        
    end
  
  end

  
  def update

    @booking_type = BookingType.find(params[:id])
    @booking_type.update(booking_type_params)
    redirect_to booking_type_url(@booking_type)
    flash[:notice] = "Booking type has been updated successfully"
   
  end

  
  def destroy
    @booking_type.destroy
    redirect_to booking_types_url
    flash[:notice] = "You have removed a booking type"
    
  end

  private
   
    def set_booking_type
      @booking_type = BookingType.find(params[:id])
    end

    def booking_type_params
      params.require(:booking_type).permit(:category, :location, :description,  :user_id)
    end
end
