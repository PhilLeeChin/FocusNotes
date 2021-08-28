class CreateNotepads < ActiveRecord::Migration[6.1]
  def change
    create_table :notepads do |t|
      t.string :title
      t.string :note

      t.timestamps
    end
  end
end
