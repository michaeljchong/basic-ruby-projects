require './lib/caesar_cipher'

describe "caesar_cipher" do
  it "returns the string with characters shifted 5 times" do
    expect(caesar_cipher('What a string!', 5)).to eql("Bmfy f xywnsl!")
  end
end
