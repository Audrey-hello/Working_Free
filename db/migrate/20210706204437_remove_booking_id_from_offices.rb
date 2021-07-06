class RemoveBookingIdFromOffices < ActiveRecord::Migration[6.0]
  def change
    remove_column :offices, :booking_id, :string
  end
end
