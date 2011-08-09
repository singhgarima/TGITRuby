class RenamePlayerAsTeam < ActiveRecord::Migration
  def self.up
    rename_table :players, :teams
  end

  def self.down
    rename_table :teams, :players
  end
end
