require 'rails_helper'

RSpec.describe "App", type: :request do
  describe "GET /" do
    it "Recieve Status 200 in /GET on /user_contacts" do
      get user_contacts_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /user_contacts" do
    it "Recieve Status 200 in /POST user_contacts" do
      post user_contacts_path(user_contact: {email: "test@test.com.br", name: "Contact Test"}), xhr: true
      expect(response).to have_http_status(200)
    end
  end

end
