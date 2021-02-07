class CreateLearns < ActiveRecord::Migration[6.1]
  def change
    create_table :learns do |t|
      t.string :category

      t.timestamps
    end
  end
end
