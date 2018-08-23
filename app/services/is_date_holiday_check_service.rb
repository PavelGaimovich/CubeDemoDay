class IsDateHolidayCheckService
  def initialize(date)
    @date = date
  end

  def exec
    event = GOOGLE_CALENDAR.find_events_in_range(@date, @date + 1)
    event.any?
  end
end
