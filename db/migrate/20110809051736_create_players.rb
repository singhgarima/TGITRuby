class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :member_one
      t.string :role_one
      t.string :member_two
      t.string :role_two
      t.integer :questions_attempted

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
