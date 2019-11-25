require "date"
require "xsd/datatypes"

# Fix bug in "soap4r-ng" gem, where representation of "xsd:gYear" datatype is,
# incorrectly, delegated to `DateTime.to_datetime` in first clause of
# `XSD::XSDDateTimeImpl#screen_data` instance method (c.f.,
# https://github.com/rubyjedi/soap4r/blob/master/lib/xsd/datatypes.rb#L579).

XSD::XSDDateTimeImpl.class_eval do
  undef :screen_data
end

XSD::XSDDateTimeImpl.send(:define_method, :screen_data) do |t|
  if t.is_a?(::DateTime)
    t
  elsif t.is_a?(::Date)
    t = send(:screen_data_str, t)
    t <<= 12 if t.year < 0
    t
  elsif t.is_a?(::Time)
    jd = ::DateTime.send(:civil_to_jd, t.year, t.mon, t.mday, ::DateTime::ITALY)
    fr = ::DateTime.send(:time_to_day_fraction, t.hour, t.min, [t.sec, 59].min) + t.usec.to_r / XSD::XSDDateTimeImpl::DayInMicro
    of = t.utc_offset.to_r / XSD::XSDDateTimeImpl::DayInSec
    ::DateTime.new!(::DateTime.send(:jd_to_ajd, jd, fr, of), of, ::DateTime::ITALY)
  else
    send(:screen_data_str, t)
  end
end
