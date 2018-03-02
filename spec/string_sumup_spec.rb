require 'spec_helper'

describe StringSumup do

  describe 'success process' do
    let(:input) { "1,2" }
    let(:output) { StringSumup.process(input) }

    it 'convert a number of string to integer & sum' do
      expect(output).to eq(3)
    end
  end

  describe 'error process' do
    let(:input) { "-1,100" }
    let(:output) { StringSumup.process(input) }

    it 'convert a number of string to integer & sum' do
      expect(output).to eq ("Error!!")
    end
  end

  describe 'error process' do
    let(:input) { "-3123" }
    let(:output) { StringSumup.process(input) }

    it 'convert a number of string to integer & sum' do
      expect(output).to eq ("Error!!")
    end
  end

  describe 'success process with regexp' do
    let(:input) { "2\n4" }
    let(:output) { StringSumup.process(input) }

    it 'convert a number of string to integer & sum' do
      expect(output).to eq(6)
    end
  end

  describe 'success process with symbols' do
    let(:input) { "3**+%#{}2" }
    let(:output) { StringSumup.process(input) }

    it 'convert a number of string to integer & sum' do
      expect(output).to eq(5)
    end
  end
end