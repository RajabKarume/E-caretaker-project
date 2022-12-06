class TenantSerializer < ActiveModel::Serializer
  attributes :name, :email, :phone_number, :house_number, :number_of_bedrooms, :rent, :is_paid
  belongs_to :apartment
end
