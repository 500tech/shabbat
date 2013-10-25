require 'spec_helper'

describe Shabbat do
  Dates = {
    friday: Date.parse('25/10/2013'),
    next_saturday: Date.parse('2/11/2013'),
    saturday: Date.parse('26/10/2013'),
    last_saturday: Date.parse('19/10/2013'),
  }
  context 'on friday' do
    around do |example|
      Timecop.freeze(Dates[:friday])
      example.run
      Timecop.return
    end
    describe '.next_shabbat' do
      it {Date.next_shabbat.should eq Dates[:saturday]}
      it {Dates[:friday].next_shabbat.should eq Dates[:saturday]}
    end
    describe '.last_shabbat' do
      it {Date.last_shabbat.should eq Dates[:last_saturday]}
      it {Dates[:friday].last_shabbat.should eq Dates[:last_saturday]}
    end  
    describe '.shabbat?' do
      it {Dates[:friday].shabbat?.should be_false}
    end
  end
  context 'on saturday' do
    around do |example|
      Timecop.freeze(Dates[:saturday])
      example.run
      Timecop.return
    end
    describe '.next_shabbat' do
      it {Date.next_shabbat.should eq Dates[:next_saturday]}
      it {Dates[:saturday].next_shabbat.should eq Dates[:next_saturday]}
    end
    describe '.last_shabbat' do
      it {Date.last_shabbat.should eq Dates[:last_saturday]}
      it {Dates[:saturday].last_shabbat.should eq Dates[:last_saturday]}
    end  
    describe '.shabbat?' do
      it {Dates[:saturday].shabbat?.should be_true}
    end
  end  
end