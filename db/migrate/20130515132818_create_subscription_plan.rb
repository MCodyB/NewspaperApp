class CreateSubscriptionPlan < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.boolean :is_daily
      t.integer :newspaper_id
      t.integer :price

      t.timestamps
    end
  end
end
