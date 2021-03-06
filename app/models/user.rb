class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum: 5}
    validates :email, presence: true, uniqueness: true, length: {minimum: 10}
    validates :password, presence: true, uniqueness: true, length: {minimum: 5}
end
