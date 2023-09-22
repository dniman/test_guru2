class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :question, null: false
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
