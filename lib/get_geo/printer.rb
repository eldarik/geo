class GetGeo::Printer
  attr_reader :data, :output_string

  def initialize(data)
    @data = data
    set_output_string
  end

  def print
    output_string
  end

  private
  def set_output_string
    @output_string =
      <<~HEREDOC
        --- GetGeo ---
        #{item_line('city', data.city)}
        #{item_line('country', data.country)}
        #{item_line('lat', data.lat)}
        #{item_line('lon', data.lon)}
        #{item_line('query', data.query)}
      HEREDOC
  end

  def item_line(label, value)
    "#{label}: #{value}"
  end
end
