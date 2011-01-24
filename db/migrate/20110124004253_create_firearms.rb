class CreateFirearms < ActiveRecord::Migration
  def self.up
    create_table :firearms do |t|
      t.string :caliber
      t.integer :times_fired
      t.date :last_clean_date

      t.timestamps
    end
  end

  def self.down
    drop_table :firearms
  end
end
