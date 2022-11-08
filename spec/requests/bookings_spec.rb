require 'rails_helper'

RSpec.describe Booking, type: :request do
    describe "GET /bookings" do
        it "returns http success" do
            get "/bookings"
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET /new" do
        it "returns http success" do
            get "/bookings/new"

            expect(response).to have_http_status(:success)

        end
    end

end