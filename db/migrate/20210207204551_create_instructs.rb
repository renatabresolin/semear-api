class CreateInstructs < ActiveRecord::Migration[6.1]
  def change
    create_table :instructs do |t|
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
