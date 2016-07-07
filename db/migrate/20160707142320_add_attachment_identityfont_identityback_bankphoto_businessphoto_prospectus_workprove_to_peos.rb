class AddAttachmentIdentityfontIdentitybackBankphotoBusinessphotoProspectusWorkproveToPeos < ActiveRecord::Migration
  def self.up
    change_table :peos do |t|
      t.attachment :identityfont
      t.attachment :identityback
      t.attachment :bankphoto
      t.attachment :businessphoto
      t.attachment :prospectus
      t.attachment :workprove
    end
  end

  def self.down
    remove_attachment :peos, :identityfont
    remove_attachment :peos, :identityback
    remove_attachment :peos, :bankphoto
    remove_attachment :peos, :businessphoto
    remove_attachment :peos, :prospectus
    remove_attachment :peos, :workprove
  end
end
