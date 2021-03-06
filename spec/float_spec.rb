require 'core_extend'

describe Float do
  it 'decimal_point' do
    p "3.2268.decimal_point==#{3.2268.decimal_point(2)}"
    expect(3.2268.decimal_point).to eq(3.23)
  end

  it 'to_money' do
    p "123456789.456.to_money===#{123456789.456.to_money}"
    p "32005487.45===#{32005487.45.to_money('text')}"
    p "2332005487.45===#{2332005487.45.to_money('text',4)}"
    p "2332005487.45===#{2332005487.45.to_money('text',0)}"
    p "2332005487.45===#{2332005487.45.to_money('num',2)}"
    p "2332005487.45===#{2332005487.45.to_money('num',0)}"
    p "1.to_money===#{1.to_money}"
  end

  it 'to_size' do
    p "45200455.to_size===#{45200455.to_size}"
    p "46023.to_size===#{46023.to_size}"
  end
end