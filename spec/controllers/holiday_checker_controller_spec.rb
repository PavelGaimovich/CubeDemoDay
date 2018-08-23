require 'rails_helper'

RSpec.describe HolidayCheckerController, type: :controller do
  context 'GET /', type: :request do
    it 'status success' do
      get root_url
      assert_response :success
    end
  end

  context 'PUT /holiday_checker', type: :request do
    it 'redirect_to success if date is holiday', type: :request do
      put holiday_checker_url, params: { picked_date: { date: "31-12-2018" } }
      assert_redirected_to success_holiday_checker_url
    end

    it 'redirect_to failure_url if date is not holiday' do
      put holiday_checker_url, params: { picked_date: { date: "09-08-2018" } }
      assert_redirected_to failure_holiday_checker_url
    end
  end

  context 'GET /holiday_checker/success', type: :request do
    it 'succes page available' do
      get success_holiday_checker_path
      assert_response :success
    end
  end

  context 'GET /holiday_checker/failure', type: :request do
    it 'failure page available' do
      get failure_holiday_checker_url
      assert_response :success
    end
  end
end
