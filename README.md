## ポイント目次
2.10.1 論理演算子の動きと優先順位<br>
2.10.5 条件演算子(三項演算子、true/falseだけのようなシンプルなif文ならこっちを使う)(式　？　trueの時の処理 : falseの時の処理)<br>
2.11.2 ?で終わるメソッド一部紹介<br>
2.11.3 !で終わるメソッド一部紹介

## わかりずらい部分
2.9.3<br>
指数表現<br>
2e-3 #=> 0.002<br> 
2x10の-3乗ということ。わかりやすくするとeのあと＋なら10ｘ倍-なら1/10x倍

2.12.5<br>
Rubyの変数にはオブジェクトの値ではなく参照が格納されている
```
a = "Hello"
b = "Hello"
a = b
a.upcase!
puts a,b
a #=> HELLO
b #=> HELLO
```
上記のようにa=bなどとするとオブジェクトの変更が影響する

eachをmapに置き換え. 
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
mapメソッドはブロックの戻り値が配列の要素となる新しい配列が作成されるためmapメソッドの戻り値をそのまま使える