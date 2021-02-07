class CreateUserInstructs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_instructs do |t|
      t.references :instruct, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
