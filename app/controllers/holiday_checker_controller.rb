class HolidayCheckerController < ApplicationController
  def update
    date = DateTime.strptime(params[:picked_date][:date], '%d-%m-%Y')

    if IsDateHolidayCheckService.new(date).exec
      redirect_to success_holiday_checker_path
    else
      redirect_to failure_holiday_checker_path
    end
  end

  def success
  end

  def failure
  end
end
