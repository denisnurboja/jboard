class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :location
      t.text :description
      t.references :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :jobs, :companies
  end
end
