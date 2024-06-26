# frozen_string_literal: true

class AddConfirmableToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users, bulk: true do |t|
      # Confirmable
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email

      # Indexes
      t.index :confirmation_token, unique: true
    end
  end
end
