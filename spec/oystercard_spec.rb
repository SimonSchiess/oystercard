require 'oystercard'

describe Oystercard do

  it 'user can check card balance and balance = 0' do
    expect(subject.balance).to eq 0
  end

  it 'can be topped up' do
    subject.top_up(5)
    expect(subject.balance).to eq 5
  end

  it 'responds to top_up' do
    expect(subject).to respond_to :top_up
  end

  it 'balance cannot rise over £90' do
    maximum_balance = Oystercard::MAXIMUM_BALANCE
    subject.top_up(maximum_balance)
    expect { subject.top_up(50) }.to raise_error "Maximum balance is #{maximum_balance}"
  end

  it 'cannot be topped up a negative value' do
    expect { subject.top_up(-5) }.to raise_error 'Cannot top_up a negative value'
  end

end
