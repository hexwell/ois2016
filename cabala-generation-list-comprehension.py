def gen(n):
  return [[]] if n == 0 else [
    (i, *y)
    for i in (3, 6, 9)
    for y in gen(n - 1)
    if not y or y[0] != i
  ]

print(gen(3))
