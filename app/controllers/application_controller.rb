class ApplicationController < ActionController::Base
  def horoscopes
    all_zodiacs = Zodiac.list
    x = params.fetch("the_sign")
    this_zodiac = all_zodiacs.fetch(x.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    @name = this_zodiac.fetch(:name)
    @array_of_numbers = Array.new
    5.times do
      another_number = rand(1...100)
      @array_of_numbers.push(another_number)
    end

    render({ :template => "layouts/zodiac.html.erb" })
  end
end
