require 'rails_helper'
    RSpec.describe User, type: :model do
        let(:attributes) do 
            {
            first_name: "Bob",
            last_name: "Alice",
            email: "exampleemail@example.com",
        }
        end


    it "is invalid without first name" do
        attributes[:first_name] = nil
  
     expect(User.new(attributes).valid?).to be_falsey

    end

    it "is invalid without last name" do
        attributes[:last_name] = nil
        expect(User.new(attributes).valid?).to be_falsey
    end

    it "is invalid without email" do
        attributes[:email] = nil
        expect(User.new(attributes).valid?).to be_falsey
    end

    it "is valid with proper data" do
        
        expect(User.new(attributes).valid?).to be_falsey
    end
end
