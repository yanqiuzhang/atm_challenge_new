require './lib/account.rb'
require 'date'

describe Account do 
    let(:person) {instance_double('Person', name: 'Thomas')}
    subject { described_class.new({owner: person}) }
    
    it 'check length of a number' do
        number_length = Math.log10(subject.pin_code).to_i + 1
    expect(number_length).to eq 4 
    end
   
    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end   
    
    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'is expected to have an owner' do 
        expect(subject.owner).to eq person
    end 

    it 'is expected to raise error if no owner is set' do
        expect {described_class.new }.to raise_error 'An Account owner is required'
    end  
    
end
