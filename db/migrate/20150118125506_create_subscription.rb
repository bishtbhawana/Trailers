class CreateSubscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
    	t.string "email", :default => "", :null => false
    end
  end
end
