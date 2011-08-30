class CreateKoozies < ActiveRecord::Migration
  def self.up
    create_table :koozies do |t|
      t.string :name
      t.string :description
      t.references :style

      t.timestamps
    end
  end

  def self.down
    drop_table :koozies
  end
end
