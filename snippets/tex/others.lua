return {
  s(
    "beg",
    fmta(
      [[
\begin{<>}
    <>
\end{<>}
]],
      { i(1), i(2), rep(1) }
    )
  ),

  s(
    "box",
    fmta(
      [[
    \begin{<>}{<>}{}
        <>
    \end{<>}
    ]],
      { i(1), i(2), i(3), rep(1) }
    )
  ),
}
