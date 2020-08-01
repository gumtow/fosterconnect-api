class User < ApplicationRecord
    has_secure_password

    has_many :children
    has_many :messageboards
    validates_presence_of :email
    validates_uniqueness_of :email
end
