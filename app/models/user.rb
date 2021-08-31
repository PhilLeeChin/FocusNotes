class User < ApplicationRecord
    has_secure_password

    has_many :notepads
    # belongs_to :inkpad, class_name: "Notepad"

    validates :name, :username, presence: true
    validates :username, uniqueness: true
end
