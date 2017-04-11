class Bike 

	def initialize
		@working_status = true
	end

	def set_working(new_status)
		@working_status = new_status
	end

  def working?
    @working_status
  end

  def docked?
  	docked
  end


end
