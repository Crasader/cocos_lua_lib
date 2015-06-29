
local TestVO = class("TestVO", app.D)

function TestVO:ctor()
	print("testVO:Ctor")

	TestVO.super.ctor(self)
	self:setproperty({"id", 1, didSet= function(v)
		end})

	self.testSignal = require("core.Signal").new()


end

function TestVO:fireSignal()
	self.testSignal:fire(".....test.....")
end


local vo = TestVO.new()

return vo
