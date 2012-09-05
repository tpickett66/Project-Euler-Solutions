
module NumericExtension

  def palindrome?
    str = self.to_s
    return false if str.size < 2 || self <= 0
    str == str.reverse
  end
end
