---@diagnostic disable: undefined-global
local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  s({ trig = "mk", snippetType = "autosnippet" }, fmta("$<>$", { i(1) })),
  s({ trig = "dm", snippetType = "autosnippet" }, fmta("$$\n<>\n$$", { i(1) })),
  s(
    { trig = "ff", snippetType = "autosnippet" },
    fmta([[\frac{<>}{<>}]], { i(1), i(2) }),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),
  s(
    { trig = "dv", snippetType = "autosnippet" },
    fmta([[\dv{<>}{<>}]], { i(1), i(2) }),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),
  s(
    { trig = "int", snippetType = "autosnippet" },
    fmta([[\int_{<>}^{<>}]], { i(1), i(2) }),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),
  s(
    { trig = "sum", snippetType = "autosnippet" },
    fmta([[\sum_{<>}^{<>}]], { i(1), i(2) }),
    { condition = in_mathzone, show_condition = in_mathzone }
  ),
}
