class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|

      t.string :memotitle
      t.text :memocontent
      t.integer :plan_id
      t.string :object
    end
  end
end
