class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :name

      t.timestamps
    end
  end
end
