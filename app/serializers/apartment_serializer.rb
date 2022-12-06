class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user_id
  belongs_to :user
  has_many :tenants
end
