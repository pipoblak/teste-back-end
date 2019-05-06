class VisitorInfo < ApplicationRecord
  validates :guid, presence: true 
  validates :path, presence: true
  validates :accessed_at, presence: true
  
  ACCESSIBLE_ATTRIBUTES = [:guid, :path, :accessed_at].freeze
  ATTRIBUTES_FOR_PRESENTATION_TABLE = [:id, :guid, :path, :accessed_at].freeze
  SUBTITLE = "Informations from Visitors"
end
