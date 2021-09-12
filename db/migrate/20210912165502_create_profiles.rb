class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :photographer, null: false, default: false

      t.timestamps
    end
  end
end
