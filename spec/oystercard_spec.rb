require 'oystercard'

describe Oystercard do

  it 'user can check card balance and balance = 0' do
    expect(subject.balance).to eq 0
  end

end
