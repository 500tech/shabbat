require "active_support/all"
module Shabbat
  extend ActiveSupport::Concern
  def shabbat?
    self.to_date.wday == 6
  end
  def next_shabbat
    last_shabbat + 7.days
  end
  def last_shabbat
    day = self.to_date
    diff = day.wday % 6
    day - diff.days
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
