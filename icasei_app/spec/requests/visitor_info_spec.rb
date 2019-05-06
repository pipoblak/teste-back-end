require 'rails_helper'

RSpec.describe "App", type: :request do
  describe "GET /" do
    it "Recieve Status 200 in /GET on /visitor_infos" do
      get visitor_infos_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /visitor_infos" do
    it "Recieve Status 200 in /POST visitor_infos" do
      post visitor_infos_path(visitor_info: {guid: "guid-test", path:"path-test", accessed_at: Time.now}), xhr: true
      expect(response).to have_http_status(200)
    end
  end

end
