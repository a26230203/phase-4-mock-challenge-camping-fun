class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.integer :camper_id
      t.string :activity_id
      t.string :integer
      t.string :time
      t.string :integer

      t.timestamps
    end
  end
end
