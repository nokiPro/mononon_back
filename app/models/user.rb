class User < ApplicationRecord
	has_many :propaties

	validates :name, :email, :capacity, presence: true
end
