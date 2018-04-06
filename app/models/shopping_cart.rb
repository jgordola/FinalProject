class ShoppingCart < ApplicationRecord
  def initialize(token:)
    @token = token
  end
end
