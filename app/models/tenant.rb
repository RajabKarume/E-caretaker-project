class Tenant < ApplicationRecord
    belongs_to :apartments

    validates :email, uniqueness: true
    validates :phone_number, length: { is: 12 }
    validates :house_number, uniqueness: true
    validates :number_of_bedrooms, inclusion: { in: "bedsitter", "1 bedroom", "2 bedrooms", "3 bedrooms", "4 bedrooms" }
end
