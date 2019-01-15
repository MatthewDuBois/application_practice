Rails.application.routes.draw do
  get '/application_practice' => 'api/practice_app_pages#fortune_action'
  get '/lotto_url' => 'api/practice_app_pages#lotto_action'
end
