require 'rails_helper'

RSpec.describe "App", type: :request do
  describe "GET /" do
    it "Recieve Status 200 in /GET " do
      get root_path
      expect(response).to have_http_status(200)
    end
    it "Recieve Status 200 in /GET on /about " do
      get about_path
      expect(response).to have_http_status(200)
    end
    it "Recieve Status 200 in /GET on /contact" do
      get contact_path
      expect(response).to have_http_status(200)
    end
  end

end