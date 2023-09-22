class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.title :string
      t.level :integer, null: false, default: 1
      t.categories :references, null: false
      t.users :references, null: false

      t.timestamps
    end
  end
end
