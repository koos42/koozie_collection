class CreateKoozyTags < ActiveRecord::Migration
  def self.up
    create_table :koozy_tags do |t|
      t.references :koozy
      t.references :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :koozy_tags
  end
end
