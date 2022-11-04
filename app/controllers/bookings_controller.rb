class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]
  skip_before_action :set_current_user

  def index
    @bookings = Booking.all
  end

 
  def show
  end

 
  def new
    @booking = Booking.new
  end

  
  def edit
  end


  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully created." }
      
      else
        format.html { render :new, status: :unprocessable_entity }
       
      end
    end
  end


  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
  
      end
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url
    flash[:notice] = "Booking was successfully destroyed." 
 
    
  end

  private

    def set_booking
      @booking = Booking.find(params[:id])
    end

   
    def booking_params
      params.require(:booking).permit( :first_name, :last_name, :email, :start_at, :end_at, :booking_id)
    end
end
