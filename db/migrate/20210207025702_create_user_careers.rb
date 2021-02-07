class CreateUserCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_careers do |t|
      t.references :career, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
