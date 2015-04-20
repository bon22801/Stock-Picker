require_relative "stock_picker"

describe "stock_picker" do
  it "returns an array of the best day to buy and sell" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    expect(stock_picker([18,9,8,12,6,5,14,3,2])).to eq([5,6])
  end 
end

