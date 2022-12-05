class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email, :house_number, :number_of_bedrooms, :rent_amount, :is_paid
end
