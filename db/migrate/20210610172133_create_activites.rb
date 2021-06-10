class CreateActivites < ActiveRecord::Migration[6.1]
  def change
    create_table :activites do |t|
      t.string :name
      t.integer, :difficulty

      t.timestamps
    end
  end
end
