class CreateTableDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors, id: false do |t|
      t.primary_key :patient_id, referenced_from: :users
      t.string :name
    end
  end
end
