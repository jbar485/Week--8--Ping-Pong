require('rspec')
require('pingpong')

describe('#pingpong_count') do
  it("counts to any number given and puts it in an array") do
    expect(5.pingpong_count).to(eq([1,2,'ping',4,"pong"]))
  end
  it("replace any number that is evenly divisible by 15 with 'ping pong'") do
    expect(15.pingpong_count).to(eq([1,2,'ping',4,"pong",'ping',7,8,'ping',"pong",11,'ping',13,14, 'ping pong']))
  end
  it("replace any number that is evenly divisible by 3 but not by 5 with 'ping'") do
    expect(6.pingpong_count).to(eq([1,2,'ping',4,"pong",'ping']))
  end
  it("replace any number that is evenly divisible by 5 but not by 3 with 'pong'") do
    expect(6.pingpong_count).to(eq([1,2,'ping',4,"pong",'ping']))
  end
end
