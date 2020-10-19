class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_type
      t.integer :attack_power
      t.integer :health
      t.string :image
      t.integer :monster_id

      t.timestamps
    end
  end
end
