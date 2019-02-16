module Geo::Printer
  def self.print(data)
    <<~HEREDOC
      --- Geo ---
      #{item_line('city', data['city'])}
      #{item_line('country', data['country'])}
      #{item_line('lat', data['lat'])}
      #{item_line('lon', data['lon'])}
      #{item_line('query', data['query'])}
    HEREDOC
  end

  private
  def self.item_line(label, value)
    "#{label}: #{value}"
  end
end
