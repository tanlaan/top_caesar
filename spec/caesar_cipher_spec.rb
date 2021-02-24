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

end
