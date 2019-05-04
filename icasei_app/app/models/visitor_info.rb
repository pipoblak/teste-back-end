class VisitorInfo < ApplicationRecord
  ACCESSIBLE_ATTRIBUTES = [:guid, :path, :accessed_at].freeze

end
