class AddOwnerToCars < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :owner, null: false, foreign_key: true
  end
end
