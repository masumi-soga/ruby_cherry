## ポイント目次

2.10.1 論理演算子の動きと優先順位<br>
2.10.5 条件演算子(三項演算子、true/false だけのようなシンプルな if 文ならこっちを使う)(式　？　 true の時の処理 : false の時の処理)<br>
2.11.2 ?で終わるメソッド一部紹介<br>
2.11.3 !で終わるメソッド一部紹介

## わかりずらい部分

2.9.3<br>
指数表現<br>
2e-3 #=> 0.002<br>
2x10 の-3 乗ということ。わかりやすくすると e のあと＋なら 10 ｘ倍-なら 1/10x 倍

2.12.5<br>
Ruby の変数にはオブジェクトの値ではなく参照が格納されている

```
a = "Hello"
b = "Hello"
a = b
a.upcase!
puts a,b
a #=> HELLO
b #=> HELLO
```

上記のように a=b などとするとオブジェクトの変更が影響する

each を map に置き換え.

```
numbers = [1,2,3,4,5]
new_numbers = []
numbers.each {|n| new_numbers << n * 10}
new_numbers #=> [10,20,30,40,50]
↓
numbers = [1,2,3,4,5]
new_numbers = numbers.map {|n| n * 10}
new_numbers #=> [10,20,30,40,50]
```

map メソッドはブロックの戻り値が配列の要素となる新しい配列が作成されるため map メソッドの戻り値をそのまま使える

def aaa(\*int)
end
上のように引数の前に「\*」をつけることで複数の値を配列として渡すことができる

メソッド中の return と break の違い
return:メソッドから抜ける
break:その繰り返し処理から抜ける
next はループから抜けずに次の繰り返しに飛ぶ  

正規表現  
/\d{4}/  
上記の様に//で囲む
\d{4}:4桁の数字  

Rubyでは定数を変更することができる
INT = ["one", "two", "three"]  
INT.delete("one")  
INT #=> ["two", "three"]  
これを防ぐためにfreezeを行う　　
INT = ["one", "two", "three"].freeze  
これだけでは中身を指定しての変更は行えるため各要素もfreezeすると変更を防げる(mapを使うと楽)  
INT = ["one", "two", "three"].map(:&freeze).freeze  
boolean型やシンボル、数値はイミュータブルなのでfreezeの必要はない
