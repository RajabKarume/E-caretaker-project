class ApartmentSerializer < ActiveModel::Serializer
  attributes :name, :location
  belongs_to :user
  has_many :tenants
end
