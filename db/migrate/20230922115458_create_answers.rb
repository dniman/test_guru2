class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.body :string
      t.questions :references, null: false
      t.correct :boolean, null: false, default: false

      t.timestamps
    end
  end
end
