# db/migrate/20230721185023_add_devise_to_users.rb
# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def up
    # Database authenticatable
    unless column_exists?(:users, :encrypted_password)
      add_column :users, :encrypted_password, :string, null: false, default: ""
    end

    # Recoverable
    unless column_exists?(:users, :reset_password_token)
      add_column :users, :reset_password_token, :string
    end

    unless column_exists?(:users, :reset_password_sent_at)
      add_column :users, :reset_password_sent_at, :datetime
    end

    # Rememberable
    unless column_exists?(:users, :remember_created_at)
      add_column :users, :remember_created_at, :datetime
    end

    # ... Add other Devise columns here ...

    # If timestamps columns were not included in your original model, add them here.
    # If the timestamps columns are already present in the 'users' table, this will have no effect.
    unless column_exists?(:users, :created_at)
      add_column :users, :created_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end

    unless column_exists?(:users, :updated_at)
      add_column :users, :updated_at, :datetime, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end

    # Add any necessary indexes (you may already have them, so check before adding)
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
