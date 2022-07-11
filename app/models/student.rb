class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    if self.active == true
      self.update(active: false)
    else
      self.update(active: true)
    end
  end

  def active_status
    self.active == true ? "This student is currently active." : "This student is currently inactive."
  end
end