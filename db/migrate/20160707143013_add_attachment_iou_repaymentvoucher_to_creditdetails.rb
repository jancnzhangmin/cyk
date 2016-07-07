class AddAttachmentIouRepaymentvoucherToCreditdetails < ActiveRecord::Migration
  def self.up
    change_table :creditdetails do |t|
      t.attachment :iou
      t.attachment :repaymentvoucher
    end
  end

  def self.down
    remove_attachment :creditdetails, :iou
    remove_attachment :creditdetails, :repaymentvoucher
  end
end
