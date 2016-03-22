Puppet::Type.type(:mytest).provide(:test) do
  def supplyversion
  end

  def supplyversion=(teststr)
    Dir.chdir('/pkg')
    File.open(teststr, "w") {}
  end
end
