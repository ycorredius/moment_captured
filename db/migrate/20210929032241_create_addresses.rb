class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :job_application, null: false, foreign_key: true
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      
      t.timestamps
    end
  end
end
