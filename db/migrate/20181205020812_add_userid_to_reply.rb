class AddUseridToReply < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :userid, :integer
  end
end
