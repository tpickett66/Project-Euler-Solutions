
module NumericExtension

  def palindrome?
    str = self.to_s
    str == str.reverse
  end
end
