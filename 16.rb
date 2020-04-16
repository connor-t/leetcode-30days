def checkValidString(s)
  cmin, cmax = 0,0
  s.each_char do
    if i == '('
      cmax += 1
      cmin += 1
    elsif i == ')'
      cmax -= 1
      cmin = (cmin - 1, 0)
    elsif i == '*'
      cmax += 1
      cmin = max(cmin - 1, 0)
    elsif cmax < 0
      false
    end
  end
  return cmin == 0
end
