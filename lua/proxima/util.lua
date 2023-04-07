local M = {}

---Round float to nearest int
-- @param x number Float
-- @return number
function M.round(x)
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

---Clamp value between the min and max values.
-- @param value number
-- @param min number
-- @param max number
function M.clamp(value, min, max)
  return math.min(math.max(value, min), max)
end

---Return true if color is hex, false if color from palette
-- @param clr string
function M.is_hex_color(clr)
  local result, _ = string.find(clr, "#")
  if result == 1 then
    return true
  end

  return false
end

--Return the color code
-- @param clr string
-- @param fallback string
function M.get_color(palette)
  return function(clr)
    if M.is_hex_color(clr) then
      return clr
    end
    return palette[clr]
  end
end

return M
