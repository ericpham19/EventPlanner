require 'rails_helper'
    RSpec.describe Booking, type: :model do
        let(:attributes) do 
            {
            first_name: "Bob",
            last_name: "Alice",
            start_at: "2022-01-02",
            end_at: "2022-01-03"
        }
        end


    it "is invalid without first name" do
        attributes[:first_name] = nil
  
     expect(Booking.new(attributes).valid?).to be_falsey

    end

    it "is invalid without last name" do
        attributes[:last_name] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end

    it "is invalid without email" do
        attributes[:start_at] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end


    it "is invalid without email" do
        attributes[:end_at] = nil
        expect(Booking.new(attributes).valid?).to be_falsey
    end

    it "is valid with proper data" do
        
        expect(Booking.new(attributes).valid?).to be_falsey
    end
end
