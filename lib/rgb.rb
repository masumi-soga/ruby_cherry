def to_hex(r, g, b)
  # DRY原則未適用
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

def to_ints(hex)
  # リファクタリング前
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # ints = []
  # [r,g,b].each do |s|
  #   ints << s.hex
  # end
  # ints
  # リファクタリング後
  # mapメソッドを使用
  # [r,g,b].map{|s| s.hex}
  # 更にリファクタリング
  # r, g, b = hex[1..2], hex[3..4], hex[5..6]
  # [r,g,b].map do |s|
  #   s.hex
  # end
  # 正規表現・シンボルを使ったリファクタリング
  hex.scan(/\w\w/).map(&:hex)
end