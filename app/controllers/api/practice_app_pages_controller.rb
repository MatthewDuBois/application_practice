class Api::PracticeAppPagesController < ApplicationController
  def fortune_action
    fortunes = [
      "you will live long time", 
      "you will make happy many", 
      "you will eat General Tsao Chicken much time many blessings", 
      "live forever sad man lonely infinite meet god end suffering"
    ]

    @fortune = fortunes.sample
    render 'practice_app_views.json.jbuilder'
  end  

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    @lotto_numbers = possible_numbers.pop(6)
    @formatted_numbers = @lotto_numbers.join(", ")


    render 'lotto_views.json.jbuilder'
  end  

end
