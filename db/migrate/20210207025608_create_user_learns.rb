class CreateUserLearns < ActiveRecord::Migration[6.1]
  def change
    create_table :user_learns do |t|
      t.references :learn, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
