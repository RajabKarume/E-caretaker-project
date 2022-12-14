class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user_id, :tenants
  belongs_to :user
  has_many :tenants
end
