require_relative '../caesar_cipher.rb'

RSpec.describe 'Caesar Cipher Function' do

  describe 'Verify test suite' do
    it 'Tests correctly' do
      expect(1).to eq(1)
    end
  end

  describe 'No shift functionality' do

    it 'Returns a lowercase string' do
      expect(caesar_cipher('hello world')).to eq('hello world')
    end

    it 'Returns an uppercase string' do
      expect(caesar_cipher('HELLO WORLD')).to eq('HELLO WORLD')
    end

    it 'Returns a upcase string' do
      expect(caesar_cipher('Hello World')).to eq('Hello World')
    end

    it 'Returns a non alphanumeric character properly' do
      expect(caesar_cipher('Hello World!')).to eq('Hello World!')
    end

    it 'Can take a 0 to not shift' do
      expect(caesar_cipher('Hello World!', 0)).to eq('Hello World!')
    end
  end

  describe 'Positive shift functionality' do

    it 'Returns a lowercase string' do
      expect(caesar_cipher('abc', 1)).to eq('bcd')
    end

    it 'Returns an uppercase string' do
      expect(caesar_cipher('ABC', 1)).to eq('BCD')
    end

    it 'Rounds the alphabet on lowercase' do
      expect(caesar_cipher('z', 1)).to eq('a')
    end

    it 'Rounds the alphabet on uppercase' do
      expect(caesar_cipher('Z', 1)).to eq('A')
    end

  end

  describe 'Negative shift functionality' do

    it 'Returns a lowercase string' do
      expect(caesar_cipher('bcd', -1)).to eq('abc')
    end

    it 'Returns an uppercase string' do
      expect(caesar_cipher('BCD', -1)).to eq('ABC')
    end

    it 'Rounds the alphabet on lowercase' do
      expect(caesar_cipher('a', -1)).to eq('z')
    end

    it 'Rounds the alphabet on uppercase' do
      expect(caesar_cipher('A', -1)).to eq('Z')
    end
  end

  describe 'Non alphanumeric functioanlity' do
    it 'Ignores spaces' do
      expect(caesar_cipher('a b c', 1)).to eq('b c d')
    end

    it 'Ignores punctuation' do
      expect(caesar_cipher('What a string!', 5)).to eq("Bmfy f xywnsl!")
    end
  end

end
