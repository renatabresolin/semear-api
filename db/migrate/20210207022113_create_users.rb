class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.integer :age
      t.text :description
      t.string :linkedin
      t.string :github

      t.timestamps
    end
  end
end
