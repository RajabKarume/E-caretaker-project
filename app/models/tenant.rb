class Tenant < ApplicationRecord
    belongs_to :apartment

    # validates :email, uniqueness: true
    # validates :number_of_bedrooms, inclusion: { in: ["bedsitter", "1 bedroom", "2 bedrooms", "3 bedrooms", "4 bedrooms"] }
end
