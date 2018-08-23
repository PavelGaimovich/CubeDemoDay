class IsDateHolidayCheckService
  def initialize(date)
    @date = date
  end

  def exec
    raise(StandardError, 'not date passed as argument') unless @date.is_a?(Date)

    event = GOOGLE_CALENDAR.find_events_in_range(@date, @date + 1)
    event.any?
  end
end
