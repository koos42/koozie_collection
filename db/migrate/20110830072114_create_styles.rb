class CreateStyles < ActiveRecord::Migration
  def self.up
    create_table :styles do |t|
      t.string :name
      t.integer :volume_oz

      t.timestamps
    end
  end

  def self.down
    drop_table :styles
  end
end
