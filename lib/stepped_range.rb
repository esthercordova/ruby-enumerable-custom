#
class SteppedRange

  include Enumerable
  def each
    current = start
    while current <= stop
      yield current += step
  end

  attr_reader :start, :stop, :step
  def initialize(start, stop, step = 1)
    @start = start
    @stop  = stop
    @step = step
  end
end
