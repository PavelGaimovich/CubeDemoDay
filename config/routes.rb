Rails.application.routes.draw do
  root to: 'holiday_checker#index'
  resource :holiday_checker, only: [:index, :update], controller: :holiday_checker do
    get :success
    get :failure
  end
end
