require 'oystercard'

describe Oystercard do
  it { is_expected.to respond_to(:balance) }

  it 'has initial balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'responds to top_up' do
    is_expected.to respond_to(:top_up)
  end

  it 'increases balance by top_up amount' do
    subject.top_up(10)
    expect(subject.balance).to eq 10
  end

  it 'raises an error if top_up balance limit goes over 90' do
    #subject.balance = 80
    # Oystercard::MAX_BALANCE
    expect{subject.top_up(95)}.to raise_error "Max balance of £#{Oystercard::MAX_BALANCE} reached, cannot top-up any further."
  end

  it 'deducts money from balance' do
    subject.deduct(2.50)
    expect(subject.balance).to eq -2.50
  end
end

# describe '#top-up' do
#   it { is_expected.to respond_to(:top_up).with(1).argument }
# end

# it 'can top up the balance' do
#   expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
# end
