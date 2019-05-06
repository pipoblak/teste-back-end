require 'rails_helper'

RSpec.describe UserContact, type: :model do
  it "UserContact is valid when email is unique and present, name is present" do
    user_contact = UserContact.new(email: "test@test.com.br", name: "Contact Test")
    expect(user_contact).to be_valid 
  end

  it "UserContact is invalid when email is not unique" do
    UserContact.create(email: "test@test.com.br", name: "Contact Test 1")
    user_contact = UserContact.new(email: "test@test.com.br", name: "Contact Test 2")
    expect(user_contact).to be_invalid 
  end

  it "UserContact is invalid when email is not present" do
    user_contact = UserContact.new(name: "Contact Test")
    expect(user_contact).to be_invalid 
  end

  it "UserContact is invalid when name is not present" do
    user_contact = UserContact.new(email: "test@test.com.br")
    expect(user_contact).to be_invalid 
  end
end
