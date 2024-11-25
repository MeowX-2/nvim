---@diagnostic disable: undefined-global
local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  s(
    "\\frac",
    fmta(
      [[
\frac{<>}{<>}
]],
      { i(1), i(2) }
    ),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),

  s(
    "dv",
    fmta(
      [[
\dv{<>}{<>}
]],
      { i(1), i(2) }
    ),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),

  s(
    "int",
    fmta(
      [[
\int_{<>}^{<>}
]],
      { i(1), i(2) }
    ),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),

  s(
    "sum",
    fmta(
      [[
\sum_{<>}^{<>}
]],
      { i(1), i(2) }
    ),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),
}
