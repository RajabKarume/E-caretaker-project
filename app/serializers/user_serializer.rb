class UserSerializer < ActiveModel::Serializer
  attributes :username, :password_digest
  has_many :apartments
end
