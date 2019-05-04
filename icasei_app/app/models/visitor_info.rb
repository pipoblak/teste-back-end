class VisitorInfo < ApplicationRecord
  validates :guid, presence: true 
  validates :path, presence: true
  validates :accessed_at, presence: true
  ACCESSIBLE_ATTRIBUTES = [:guid, :path, :accessed_at].freeze

end
