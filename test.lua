function quadratic(a, b, c)
  local sqr_delta = math.sqrt(b * b - 4 * a * c)
  local two_a = 2 * a
  return (-b + sqr_delta)/two_a, (-b - sqr_delta)/two_a
end


print(quadratic(2,16,4));
