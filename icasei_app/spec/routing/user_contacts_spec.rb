require "rails_helper"

RSpec.describe AppController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(:post => "/user_contacts").to route_to("user_contacts#create")
    end
  end
end