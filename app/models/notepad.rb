class Notepad < ApplicationRecord
    has_many :editors, foreign_key: :inkpad_id, class_name: "User"
end
