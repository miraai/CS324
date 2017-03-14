class Integer
  def nzd(x)
    "Najveci zajednicki delilac je: " + gcd(x).to_s
  end

  def nzs(x)
    "Najmanji zajednicki sadrzalac: " + lcm(x).to_s
  end

end

puts 20.nzd(8)
puts 5.nzs(25)
