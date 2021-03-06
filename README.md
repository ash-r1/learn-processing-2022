# 手を動かしながら Processing を通してプログラミングを学ぼう！

Processingを通してプログラミングを学ぶための練習用教材です

## はじめに

### めざすこと

- プログラミングの基礎を丁寧に学習する
- 具体例を元に、頻出するパターンを通してプログラミングの基礎概念を理解する
- 自分で先に進める基礎力を身につける

### めざさないこと

- Processingや2D描画ソフトに特有の知識はなるべく省く
  - fill, stroke, カラーモード？座標モード？ etc...
  - ただし、Processing特有の知識を「調べる方法」はどんな言語でも必要なので、目指す範囲です
- 数学になりすぎないようにする
  - 座標計算などで数学要素は出てくるが、プログラミングの前提として必要な程度に留める


### つかいかた

各ソースコードは非常に短いサンプルです。
1行ずつ、飛ばさず理解しましょう。

理解したら「やってみてほしいこと」の内容を自分でできるか試してみましょう。


## 0. 基礎をやってみよう

`sketch_0_basic`

### 目標

- setup(), draw() を理解しよう
- circle() を理解しよう
- triangle() を理解しよう
- square() を理解しよう

### やってみてほしいこと

- circleに入ってる数字を書き換えると何が起きるか
- circleを複数回書くと何が起きるか

## 1. 変数

`sketch_1_variable`

### 目標

- 変数を理解しよう

### やってみて欲しいこと

- 2倍速で大きくなる円を隣につくる


## 2. if文

`sketch_2_if`

### 目標

- if文の意味を一個一個追っていこう

### やってみて欲しいこと

- background() を消してみるとどうなるか
- 最初は大きい円が縮小するところからスタートするには？

## 3. for文

`sketch_3_for`

### 目標

- for文の意味を理解しよう

### やってみて欲しいこと

- 数を色々いじってみよう
- 発展課題: 2重のforで画面を埋め尽くす

## 4. ifとfor文

`sketch_4_if_for`

### 目標

- if文とfor文の組み合わせを理解しよう
- fillでのRGB指定を理解しよう
- `%`: 剰余演算子の意味と使い方を覚えよう

### やってみて欲しいこと

- いろんな色に変えてみる
- 3色より多くしてみる
- (実はif文なしでも同じ色を塗れるので暇だったら試してみてね)
- 発展課題: 色ではなく形を3通り描画する (○,△,□ など)

## 5. 関数

`sketch_5_function`

### 目標

- 関数定義の方法を理解しよう
- 返り値を理解しよう
- Math.tan などの関数を知ろう
  - https://processing.org/reference/ を使ってみる

### やってみて欲しいこと

- 以下の関数を実装してみよう
  - 直径ではなく半径を受け取って円を描く関数 circleHalf
  - 直径80の円を描く関数 circle80
  - 中心を受け取って正方形を描く関数 squareCenter


## 6. 文法とデータ型

`sketch_6_grammar`

### 目標

- ここまでの内容を全部組み合わせよう
- わからないことがあれば戻って確認しよう
- いくつか、あわせて理解したいこと
  - `return` での値の返却
    - 参考: http://www.musashinodenpa.com/p5/index.php?pos=113
  - 変数の型についてとcolor型
    - 型参考: https://htsuda.net/archives/900
    - color参考: http://jkoba.net/prototyping/processing/improc_pimage_practice.html
      - PImageは発展的なので、いまは飛ばして前半だけ読むとよいです
  - float,doubleとintの違い、型キャスト
    - 参考: https://r-dimension.xsrv.jp/classes_j/cast/


## 7. 配列を理解しよう

### 目標

- 配列を理解する
- 配列とforの組み合わせを扱えるようになる

### やってみて欲しいこと

- 反射する速度を変えてみる
- 色をランダムにする
- 発展課題1: 反射しつつ拡大縮小もさせてみる (20〜30の範囲くらいでOK)
- 発展課題2: 形もランダムにする
  - 発展課題2-b: ランダムな速度で回転させる (※三角形・正方形は回転に意味がある)


## 8. クラスとオブジェクトをつかってみよう

### 目標

- クラスとインスタンスがわかる
  - クラス定義
  - コンストラクタ
  - インスタンス変数
  - インスタンスメソッド(関数)


## 9. クラスと配列を組み合わせよう その1

### 目標

- クラスと配列の組み合わせ方がわかる
- インスタンスメソッドに処理をまとめることがわかる

### やってみて欲しいこと

- `final` について調べる
  - `class` における `final` はすこしだけ意味が違うので注意
  - Hint: final修飾した値を外部やコンストラクタ以外から書き換えようとすると...？
- `width`, `height` について調べる
- `this.diameter` の `random` の引数をfinal変数として定義
  - キーワード: 「マジックナンバー」
- 発展課題: `class Circle` と同じような挙動をする「三角形」`class Triangle` をつくる
  - 11の内容に関連してきます(予定)

## 10. クラスと配列を組み合わせよう その2

### 目標

- これまで学習した内容を用いた複雑なコードが読める
  - 求めないこと: freq, diameter をsinに入れた時にどうなるかの数理的な省いてもOKです。
    - 「あ、ここ何か知らんけどsinに入れる引数が複雑なんだな。 xにfreqを掛け算して、width+diameterで割ってるんだな。なんでか知らんけど」ぐらいでOKです。
  
### やってみて欲しいこと

- 発展課題: 今回の `class Circle` と同じような挙動をする「三角形」`class Triangle` をつくる (9からの継続課題)
  - 11の内容に関連してきます(予定)

## 11. インタフェース

### 目標

- `interface` 構文を理解する
  - `interface` , `implements` をリファレンスで調べて理解する
  - processingの例がわかりにくければ Java の資料を探してもOK
- interfaceの配列を使うことによる抽象化を理解する

### やってみて欲しいこと

- Squareの派生で正三角形の「Triangle」を追加する

## 12. コンポジション

### 目標

- `interface` 構文を理解する
  - `interface` , `implements` をリファレンスで調べて理解する
  - processingの例がわかりにくければ Java の資料を探してもOK
- interfaceの配列を使うことによる抽象化を理解する

### やってみて欲しいこと

- 超発展課題
  - `FloatingMove` の動き処理を `interface Move` として抽象化する
  - 異なる動きをするMove系のクラスを追加し、いろんな動きを実現する

