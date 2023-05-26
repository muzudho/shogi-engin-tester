defmodule EngineTester.CLI.RunExternalProcess do
  @moduledoc """
    外部プロセスの実行
  """

  @doc """
  """
  def do_it() do

    IO.puts("Hello, process!!")

    #
    # TODO 標準入力を待つタイプのコマンドには向いてない？
    # TODO port を使った方がいい？（https://hexdocs.pm/elixir/Port.html）
    #

    # コマンド引数をスペースで区切ったときの各要素のリスト
    parameter_tokens = ["run"]
    # コマンド実行
    {output, status} = System.cmd("mix", parameter_tokens,
    [
      # 将棋エンジンを置いてあるパス
      # エスケープ・シーケンスの誤使用に注意
      cd: "C:/GitHub/kifuwarabe-wcsc33-written-in-elixir-for-windows/kifuwarabe_wcsc33",
      # 行入力
      into: IO.stream(:stdio, :line)
    ])

    IO.puts("Bye, process!!")

    IO.inspect(output, label: "output")
    IO.inspect(status, label: "status")

  end
end
