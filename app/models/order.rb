class Order < ApplicationRecord
    belongs_to :user_
    belongs_to :product
end
