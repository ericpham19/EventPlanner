require 'rails_helper'

RSpec.describe BookingType, type: :request do
    describe "GET /booking_types" do
        it "returns http success" do
            get "/booking_types"
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET /new" do
        it "returns http success" do
            get "/booking_types/new"
            expect(response).to have_http_status(:success)

        end
    end

    # describe "GET /edit" do
    #     it "returns http success" do
    #         get "/booking_types/:id/edit"
    #         expect(response).to have_http_status(:sucess)
    #     end
    # end

    # describe "Post /create" do
    #     it "returns http success" do
    #         post "/booking_types/create", :params => {"booking_type": {"category": "test category", "location": "test location", "descriptiopn": "test description", "user_id": "1"}}
    #         expect(response).to have_status(:redirect)
    #     end
    # end




end
