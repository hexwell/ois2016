long long occulta(int N, int M, int n, int res) {
    long long l;

    for (int i = 3; i < 10; i += 3) {
        int new_num = n * 10 + i;

        if (n % 10 != i && new_num < 10**N) {
            int new_res = new_num % M;

            if (new_res > res)
                res = new_res;

            l = occulta(N, M, new_num, res);
                
            if (l > res)
                res = l;
        }
    }
  return res;
}
