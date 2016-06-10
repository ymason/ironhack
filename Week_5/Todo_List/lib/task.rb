class Task
  attr_reader :content, :id, :created_at

  @@current_id = 1

  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @status = "incomplete"
    @created_at = Time.now
    @updated_at = nil
  end

  def complete?
    @status == "complete"
  end

  def complete!
    @status = 'complete'
  end

  def make_incomplete!
    @status = 'incomplete'
  end

  def update_content!(update)
    @content = update
    @updated_at = Time.now
  end
end
