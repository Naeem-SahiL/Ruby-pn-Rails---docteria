class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :hospital_name
      t.string :address

      t.timestamps
    end
  end
end
