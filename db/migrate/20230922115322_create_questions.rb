class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :body
      t.references :tests, null: false

      t.timestamps
    end
  end
end
