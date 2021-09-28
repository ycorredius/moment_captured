class CreatePhotographyJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :photography_jobs do |t|
      t.string :title
      t.string :description
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
