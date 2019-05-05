require "rails_helper"

RSpec.describe AppController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to("app#index")
    end

    it "routes to #about" do
      expect(:get => "/").to route_to("app#about")
    end

    it "routes to #contact" do
      expect(:get => "/").to route_to("app#contact")
    end
  end
end