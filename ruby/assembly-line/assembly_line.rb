class AssemblyLine
  def initialize(speed)
    @speed = speed
    if @speed <= 4
      @success_rate = 1.0
    elsif @speed >= 5 && @speed <= 8
      @success_rate = 0.9
    elsif @speed == 9
      @success_rate = 0.8
    else
      @success_rate = 0.77
    end
  end

  def production_rate_per_hour
    221 * @speed * @success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end