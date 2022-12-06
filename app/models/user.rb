class User < ApplicationRecord
    has_secure_password
    has_many :apartments

    validates :username, presence: true, uniqueness: true
end
