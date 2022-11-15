require "pry"
require 'rails_helper'
    RSpec.describe Booking, type: :model do
        let(:attributes) do 
            {
            first_name: "Bob",
            last_name: "Alice",
            email: "weaw@gmail.com",
            booking_type: BookingType.new(category: "dwad" , location: "awdawd" , description: "weawadwa"),
            start_at: "2022-01-02",
            end_at: "2022-01-03"
        }
        end


    it "is invalid without first name" do
        attributes[:first_name] = nil
  
     expect(Booking.new(attributes).valid?).to be_falsey

    end

    
   
    it "is invalid without a booking type" do
        attributes[:booking_type] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end

    it "is invalid without last name" do
        attributes[:last_name] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end
    
    it "is invalid without start time" do
        attributes[:start_at] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end


    it "is invalid without end time" do
        attributes[:end_at] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end

    it "is valid with proper data" do
        booking1= Booking.new(attributes)
      
        expect(Booking.new(attributes).valid?).to be_truthy
    end
end
