class CreateGuacs < ActiveRecord::Migration
  def change
    create_table :guacs do |t|
      t.string :name
      t.string :avacado
      t.text :mixins
      t.integer :time_to_make
      t.float :cost
      t.date :date_created
      t.time :time_put_in

      t.timestamps
    end
  end
end
