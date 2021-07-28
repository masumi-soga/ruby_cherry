def to_hex(r, g, b)
  # DRY原則未使用
  # "#" +
  # r.to_s(16).rjust(2, "0")
  # g.to_s(16).rjust(2, "0")
  # b.to_s(16).rjust(2, "0")

  # 配列とeachを使用してDRY原則適用
  # hex = "#"
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, "0")
  # end
  # hex

  # 更にinjectメソッドを利用しリファクタリング
  [r, g, b].inject("#") do |hex, n|
    hex + n.to_s(16).rjust(2, "0")
  end
end