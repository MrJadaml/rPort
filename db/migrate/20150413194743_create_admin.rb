class CreateAdmin < ActiveRecord::Migration
  def change
    create_table :admin do |t|
      t.string :user_name
      t.string :password_digest
    end
  end
end
