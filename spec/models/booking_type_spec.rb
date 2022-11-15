require "pry"
require 'rails_helper'
    RSpec.describe BookingType, type: :model do
        let(:attributes) do 
            {
            category: "Bob",
            description: "awdawdawd",
            location: "awdwad",
            user: User.new(first_name: "adwadaw", last_name:"wawadwadwa", email: "eread@arwaea.com")
        }
        end

    it "is invalid without category" do
        attributes[:category] = nil
  
     expect(BookingType.new(attributes).valid?).to be_falsey

    end

    it "is invalid without location" do
        attributes[:location] = nil
        expect(BookingType.new(attributes).valid?).to be_falsey
    end

    it "is invalid without description" do
        attributes[:description] = nil
        expect(BookingType.new(attributes).valid?).to be_falsey
    end

    
    it "description is less than 100 characters length" do
        attributes[:description] = "e" * 101
        expect(BookingType.new(attributes).valid?).to be_falsey
    end

    it "is valid with proper data" do
        bookingtype1 = BookingType.new(attributes)
    
        expect(BookingType.new(attributes).valid?).to be_truthy
    end
end
