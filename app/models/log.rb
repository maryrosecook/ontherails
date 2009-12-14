class Log < ActiveRecord::Base #nt
  belongs_to :user
  
  def self.log(user, item, exception, message, email)
    if Linking.production?
      log = Log.new()
      log.user_id = user.id unless !user
      log.item_id = item.id unless !item
      log.item_class = item.class unless !item
      log.event = event
      log.exception_backtrace = exception.backtrace unless !exception
      log.exception_message = exception.message unless !exception
      log.message = message unless !message
      log.time = Time.new()
      log.save()
    end
  end
  
  def self.get_all_logs(offset, limit)
    self.find(:all, :order => 'time DESC', :offset => offset, :limit => limit)
  end
end