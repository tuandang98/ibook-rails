class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    User.all.update_all confirmed_at: DateTime.now
  end
end
