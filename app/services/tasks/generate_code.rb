class Tasks::GenerateCode
  def call(task)
    task.code = "#{task.owner_id}#{Time.now.to_i.to_s(36)}#{SecureRandom.hex(8)}"
    [ true, 'successful' ]
  rescue => e
    Rails.logger.error e
    [ false, 'failed' ]
  end
end