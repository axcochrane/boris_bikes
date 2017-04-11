class Bike 

	def initialize
		@working_status = true
		@docked_status = false
	end

	def set_working(new_status)
		@working_status = new_status
	end

  def working?
    @working_status
  end

	def set_docked(new_status)
		@docked_status = new_status
	end

  def docked?
    @working_status
  end

end
