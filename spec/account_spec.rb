require './lib/account.rb'

describe Account do
    let(:account) ('Account', pin_code: '1234', exp_date: '04/20', account_status: :active, account_owner: 'Nici') 
end

it "checks length of a number" do 
    number = rand(1000..9999)
    number_length = Math.log10(number).to_i + 1
    expect(number_length).to eq 4
end