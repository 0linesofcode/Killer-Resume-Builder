class CreateResumeSettings < ActiveRecord::Migration
  def self.up
    create_table :resume_settings do |t|
      t.integer :resume_id
      t.string :status, :default => "active"
      t.boolean :hide_personal_info, :default => 0
      t.boolean :alert_copy, :default => 1
      t.boolean :email_notification, :default => 1
      t.boolean :display_personal_photo, :default => 1
      t.boolean :show_last_updated, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :resume_settings
  end
end
