require 'rspec'
require_relative 'Animal'

RSpec.describe Animal do

    describe '#feed' do
        context 'when the dog is hungry' do
            it 'returns false' do
                subject = described_class.new(7)
                subject.feed
                expect(subject.hunger_level).to eq(0)
            end
        end
    end

    describe 'is_hungry?' do
        context 'if the hunger level is more than 5' do
            it 'returns true ' do
                subject = described_class.new(6) # why is the {...} not working?
                expect(subject.is_hungry?).to eql(true) # why is the to be_hungry is not working
            end 
        end
        context 'if hunger_level is less than 5' do
            it 'returns false' do
                subject = described_class.new(4)
                expect(subject.is_hungry?).to eql(false)
            end
        end
    end
end