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
typedef vector<int> vi;
typedef pair<int,int> pi;
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
#define ll long long
#define pii pair<int, int>
#define endl "\n"
#define yes cout << "YES" << endl
#define no cout << "NO" << endl
typedef vector<int> vi;
typedef pair<int,int> pi;
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
