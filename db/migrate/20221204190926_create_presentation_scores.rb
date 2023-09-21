class CreatePresentationScores < ActiveRecord::Migration[7.0]
  def change
    create_table :presentation_scores do |t|
      t.integer :grade
      t.string :comment
      t.integer :q1, null: false
      t.integer :q2, null: false
      t.integer :q3, null: false
      t.integer :q4, null: false

      t.timestamps
    end

    add_reference :presentation_scores, :presentation, foreign_key: true
    add_reference :presentation_scores, :student

  end
end
