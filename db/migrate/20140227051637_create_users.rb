class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :username
      t.string :email
      t.integer :rollnumber
      t.text :security_question
      t.text :security_answer
      t.string :password_digest

      t.timestamps
    end
  end
end
