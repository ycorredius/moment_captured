class CreatePhotographers < ActiveRecord::Migration[6.1]
  def change
    create_table :photographers do |t|
      t.string :bio

      t.timestamps
    end
  end
end
