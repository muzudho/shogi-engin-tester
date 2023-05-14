# 外部プロセスの実行

例えば、以下のようなプログラムから外部プロセスは実行できるが、  
その先が難しい  

```elixir
defmodule EngineTester.CLI.RunExternalProcess do
  @moduledoc """
    外部プロセスの実行
  """

  @doc """
  """
  def do_it() do

    # コマンド引数をスペースで区切ったときの各要素のリスト
    parameter_tokens = ["run"]
    # コマンド実行
    {_output, _status} = System.cmd("mix", parameter_tokens,
    [
      # 将棋エンジンを置いてあるパス
      # エスケープ・シーケンスの誤使用に注意
      cd: "C:/GitHub/kifuwarabe-wcsc33-written-in-elixir-for-windows/kifuwarabe_wcsc33",
      # 行入力
      into: IO.stream(:stdio, :line)
    ])

  end
end
```
