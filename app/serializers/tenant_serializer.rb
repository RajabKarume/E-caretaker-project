class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :house_number, :number_of_bedrooms, :rent, :is_paid, :apartment_id
  belongs_to :apartment
end
