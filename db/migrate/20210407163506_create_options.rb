class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :answer
      t.references :question, null: false, foreign_key: true
      t.boolean :is_correct

      t.timestamps
    end
  end
end
