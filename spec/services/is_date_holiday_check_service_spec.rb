describe IsDateHolidayCheckService do
  context '.exec' do
    it 'return false if not holiday'do
      date = DateTime.strptime('01-02-2018', '%d-%m-%Y')
      @service = IsDateHolidayCheckService.new(date)
      expect(@service.exec).to be_falsy
    end

    it 'return true if holiday'do
      date = DateTime.strptime('31-12-2018', '%d-%m-%Y')
      @service = IsDateHolidayCheckService.new(date)
      expect(@service.exec).to be_truthy
    end

    it 'raise error if not date'do
      date = 'this is string'
      @service = IsDateHolidayCheckService.new(date)
      expect { @service.exec }.to raise_error('not date passed as argument')
    end
  end
end
