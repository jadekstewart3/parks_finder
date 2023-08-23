class StatePark
  attr_reader :full_name,
              :description,
              :directions,
              :hours

  def initialize(info)
    @full_name = info[:name]
    @description = info[:description]
    @directions = info[:directions]
    @hours = format_hours_of_operation(info[:hours_operation])
  end

  private 
  
  def format_hours_of_operation(hours)
    formatted_hours = hours.map do |day, time_range|
      "#{day.to_s.capitalize}: #{time_range}"
    end
    formatted_hours.join("\n")
  end
end