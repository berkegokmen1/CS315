#include <iostream>

void test(std::vector<std::vector<int>>& res) {
  std::vector<int> v;
  v.push_back(1);

  res.push_back(v);
}

int main() {
  std::vector<std::vector<int>> res;

  test(res);

  for (int i = 0; i < res.size(); i++) {
    for (int j = 0; j < res[i].size(); j++) {
      std::cout << "j ";
    }
    std::cout << std::endl;
  }

  return 0;
}
