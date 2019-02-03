module DateHelper
  def format_datetime(date)
    return nil if date.blank?
    date.to_datetime.strftime("%F %r")
  end
end
