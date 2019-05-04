require 'rails_helper'

RSpec.describe VisitorInfo, type: :model do
  it "VisitorInfo is valid when guid is present, path is present, accessed_at is present" do
    visitor_info = VisitorInfo.new(guid: "824d438a-ea7d-03dc-60dc-829d4eee2527", path:"/rspec", accessed_at: Time.now)
    expect(visitor_info).to be_valid 
  end

  it "VisitorInfo is Invalid when guid is missing" do
    visitor_info = VisitorInfo.new(path:"/rspec", accessed_at: Time.now)
    expect(visitor_info).to be_invalid 
  end

  it "VisitorInfo is Invalid when path is missing" do
    visitor_info = VisitorInfo.new(guid: "824d438a-ea7d-03dc-60dc-829d4eee2527", accessed_at: Time.now)
    expect(visitor_info).to be_invalid 
  end

  it "VisitorInfo is Invalid when accessed_at is missing" do
    visitor_info = VisitorInfo.new(guid: "824d438a-ea7d-03dc-60dc-829d4eee2527", path:"/rspec")
    expect(visitor_info).to be_invalid 
  end

end
