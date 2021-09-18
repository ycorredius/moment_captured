class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :handle, null: false, default: ""
      t.string :bio
      t.boolean :photographer, null: false, default: false

      t.timestamps
    end
  end
end
