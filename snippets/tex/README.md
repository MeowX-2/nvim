# 📄 LaTeX Snippets Reference Manual

This directory (`snippets/tex/`) contains custom **LuaSnip** snippet definitions for TeX/LaTeX editing.

---

## 📑 Snippet Cheat Sheet

### 1. Document Template (`file.lua`)
| Trigger | Action |
| :--- | :--- |
| `file` | Expands a full `scrartcl` document preamble with packages (`amsmath`, `tcolorbox`, `asymptote`, custom color definitions, theorem environments, and problem boxes). |

---

### 2. Math & Formulas (`math.lua`) — *Autosnippets*
*Note: Autosnippets trigger automatically upon typing the shortcut without pressing Tab.*

| Trigger | Result | Condition |
| :--- | :--- | :--- |
| `mk` | `$ <> $` (Inline Math) | Anywhere |
| `dm` | `$$\n<>\n$$` (Display Math) | Anywhere |
| `ff` | `\frac{<>}{<>}` | Inside math zone |
| `dv` | `\dv{<>}{<>}` | Inside math zone |
| `int` | `\int_{<>}^{<>}` | Inside math zone |
| `sum` | `\sum_{<>}^{<>}` | Inside math zone |

---

### 3. Dynamic Matrix Generator (`matrix.lua`)
| Trigger Example | Result |
| :--- | :--- |
| `matrix3x3` | Expands a 3x3 matrix grid with tabstops for each element (`x & x & x \\`). |
| `matrix2x4` | Expands a 2x4 matrix grid dynamically based on the numbers `N` and `M`. |

---

### 4. Environments & Boxes (`others.lua`)
| Trigger | Result |
| :--- | :--- |
| `beg` | `\begin{<env>}\n  <content>\n\end{<env>}` |
| `box` | `\begin{<box_type>}{<title>}{}\n  <content>\n\end{<box_type>}` |

---

## ⌨️ Snippet Navigation
- **Jump Forward**: Press `<Tab>` while inside a snippet field.
- **Jump Backward**: Press `<S-Tab>` to return to the previous snippet field.
