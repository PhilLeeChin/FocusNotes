class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  # has_many :notepads, serializer: NotepadSerializer
end