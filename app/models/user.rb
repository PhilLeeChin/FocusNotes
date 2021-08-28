class User < ApplicationRecord
    has_secure_password

    belongs_to :inkpad, class_name: "Notepad"
end
