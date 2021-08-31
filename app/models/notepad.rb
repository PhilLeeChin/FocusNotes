class Notepad < ApplicationRecord
    # has_many :editors, foreign_key: :inkpad_id, class_name: "User"
    belongs_to :user

    validates :title, :user, presence: true
end
