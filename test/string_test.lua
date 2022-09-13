lu = require('luaunit')

-- Align the string to the left / right / center with the length

local function alignRight(s,l)
  local fmt = '%'..l..'s'
  return string.format(fmt,s)
end

local function alignLeft(s,l)
  local fmt = '%-'..l..'s'
  return string.format(fmt,s)
end

local function alignCenter(s,l)
  local rp = (l/2) - (#s/2)
  rp = math.floor(rp)
  local ls = alignLeft(s,l-rp)
  return alignRight(ls,l)
end


function testAlignLeft()
  lu.assertEquals(alignLeft("raghu",20),"raghu               ")
end

function testAlignRight()
  lu.assertEquals(alignRight("raghu",20),"               raghu")
end

function testAlignCenterWithOddSizeOddLength()
  lu.assertEquals(alignCenter("raghu",21),"        raghu        ")
end

function testAlignCenterWithOddSizeEvenLength()
  lu.assertEquals(alignCenter("raghu",20),"       raghu        ")
end

function testAlignCenterWithEvenSizeEvenLength()
  lu.assertEquals(alignCenter("traghu",20),"       traghu       ")
end
function testAlignCenterWithEvenSizeOddLength()
  lu.assertEquals(alignCenter("traghu",21),"       traghu        ")
end
-- Start the test Execution
os.exit( lu.LuaUnit.run() )
