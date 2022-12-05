class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :tenant_id
end
