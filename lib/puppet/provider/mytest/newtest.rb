Puppet::Type.type(:mytest).provide(:newtest, :parent => :test) do
  def supplyversion
  end

  def supplyversion=(teststr)
    Dir.chdir('/pkg')
    File.open("#{teststr}.new", "w") {}
  end
end
