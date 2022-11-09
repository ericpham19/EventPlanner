require 'rails_helper'

  RSpec.describe BookingTypesController, type: :controller do
   
  
    describe "GET index" do
        it "returns a successful response" do
            get :index
            expect(response).to be_successful 
        end

        # it "assigns all bookingtypes to @booking_types" do
        #     get booking_types_path
        #     expect(assigns(:booking_types)).to eq(BookingType.all)
        # end

        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
          end
    end
















end
        