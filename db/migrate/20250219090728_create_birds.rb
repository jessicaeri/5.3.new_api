class CreateBirds < ActiveRecord::Migration[8.0]
  def change
    create_table :birds do |t|
      t.string :com_name
      t.string :sci_name
      t.string :mbta_y_n

      t.timestamps
    end
  end
end
