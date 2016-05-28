class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|

      t.string  :title
      t.integer :day
    end
  end
end
