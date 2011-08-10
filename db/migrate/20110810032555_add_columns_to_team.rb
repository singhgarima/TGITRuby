class AddColumnsToTeam < ActiveRecord::Migration
  def self.up
    change_table(:teams) do |t|
      t.database_authenticatable :null => false
      t.trackable
    end
  end

  def self.down
    remove_column :teams, :email
    remove_column :teams, :encrypted_password
    remove_column :teams, :sign_in_count
    remove_column :teams, :current_sign_in_at
    remove_column :teams, :last_sign_in_at
    remove_column :teams, :current_sign_in_ip
    remove_column :teams, :last_sign_in_ip
    remove_column :teams, :confirmation_token
    remove_column :teams, :confirmed_at
    remove_column :teams, :confirmation_sent_at
  end
end
