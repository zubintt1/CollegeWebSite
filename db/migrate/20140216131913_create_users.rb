class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :user_first_name
      t.text :user_last_name
      t.text :user_username
      t.string :user_email
      t.integer :user_rollnumber
      t.text :user_security_question
      t.text :user_security_answer
      t.string :user_password_hash
      t.string :user_password_salt

      t.timestamps
    end
  end
end
