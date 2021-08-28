class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  belongs_to :inkpad
end
