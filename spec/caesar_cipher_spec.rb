require './lib/caesar_cipher'

describe 'caesar_cipher' do
  it 'returns the string with characters shifted forward 1 time' do
    expect(caesar_cipher('cat', 1)).to eql('dbu')
  end

  it 'returns the string with characters shifted forward 5 times' do
    expect(caesar_cipher('cat', 5)).to eql('hfy')
  end

  it 'returns the string with wraparound from z back to a' do
    expect(caesar_cipher('xyz', 3)).to eql('abc')
  end

  it 'returns the shifted string containing multiple words' do
    expect(caesar_cipher('hello world', 1)).to eql('ifmmp xpsme')
  end

  it 'returns the shifted string while maintaining case sensitivity' do
    expect(caesar_cipher('AbCxYz', 1)).to eql('BcDyZa')
  end

  it 'returns the string without changing punctuation' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end
