class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.boolean :hideCompletedMemo
      t.boolean :displayCommentDate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
