class CreatePendingApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :pending_applications do |t|
      t.integer :job_application_id
      t.integer :photography_job_id
      t.timestamps
    end
  end
end
