return {
  s(
    "tcpp",
    require("luasnip.extras.fmt").fmt(
      [[
#include <bits/stdc++.h>
#define ll long long
#define pii pair<int, int>
#define endl "\n"
#define yes cout << "YES" << endl
#define no cout << "NO" << endl
#define vi vector<int>
#define F first
#define read(v, n) for (int i = 0; i < n; ++i) cin >> v[i]
#define S second
#define PB push_back
#define MP make_pair
#define REP(i,a,b) for (int i = a; i <= b; i++)
using namespace std;
const int mxn = 1e5 + 5;
const int inf = 1e9;
void solve() {{

}}
int main() {{
    ios_base::sync_with_stdio(0);
    cin.tie(NULL);
    cout.tie(NULL);

    int t=1;
    cin>>t;
    while(t--)solve();

}}
]],
      {}
    )
  ),

  s(
    "cpp",
    require("luasnip.extras.fmt").fmt(
      [[
#include <bits/stdc++.h>
#define ll long l
#define read(v, n) for (int i = 0; i < n; ++i) cin >> v[i]
#define pii pair<int, int>
#define endl "\n"
#define yes cout << "YES" << endl
#define no cout << "NO" << endl
#define vi vector<int>
#define F first
#define S second
#define PB push_back
#define MP make_pair
#define REP(i,a,b) for (int i = a; i <= b; i++)
using namespace std;
const int mxn = 1e5 + 5;
const int inf = 1e9;
int main() {{
  ios_base::sync_with_stdio(0);
  cin.tie(NULL);
  cout.tie(NULL);
}}
]],
      {}
    )
  ),
}
