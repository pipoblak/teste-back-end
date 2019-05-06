class UserContact < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  
  ACCESSIBLE_ATTRIBUTES = [:email, :name].freeze
  ATTRIBUTES_FOR_PRESENTATION_TABLE = [:id, :email, :name].freeze
  SUBTITLE = "Contacts made by UserContact Form"
end
