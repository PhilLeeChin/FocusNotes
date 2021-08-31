class NotepadSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :note, :created_at, :updated_at
end
