class CreateAvailableSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :available_slots do |t|
      t.date :date_from
      t.date :date_to
      t.time :time_from
      t.time :time_to
      t.float :fees

      t.timestamps
    end
  end
end
