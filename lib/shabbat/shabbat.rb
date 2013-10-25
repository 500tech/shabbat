require "active_support/all"
module Shabbat
  extend ActiveSupport::Concern
  def shabbat?
    to_date.saturday?
  end
  def next_shabbat
    if shabbat?
      to_date + 1.week
    else
      last_shabbat + 1.week
    end
  end
  def last_shabbat
    if shabbat?
      to_date - 1.week
    else
      day = to_date
      diff = day.wday + 1
      day - diff.days
    end
  end
  module ClassMethods
    def next_shabbat
      Date.today.next_shabbat
    end
    def last_shabbat
      Date.today.last_shabbat
    end
  end
end
