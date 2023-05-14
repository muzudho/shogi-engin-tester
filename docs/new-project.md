# 新規プロジェクト作成

Input:  

```shell
mix --version
```

Output:  

```plaintext
# ...

Mix 1.14.4 (compiled with Erlang/OTP 25)
```

Input:  

```shell
mix new engine_tester
```

👆 `engine_tester` フォルダーが作成される  

Input:  

```shell
cd engine_tester
```

Input:

```shell
mix run
```

Output:  

```plaintext
Compiling 1 file (.ex)
Generated engine_tester app
```

## 使っていないファイルの削除

👇 以下のファイルは、使っていないので削除  

```plaintext
    📁 engine_tester
    └──📁 lib
        └──📄 engine_tester.ex
```

## 実行プログラム作成～実行

👇 以下のファイルを新規作成  

```plaintext
    📁 engine_tester
    └──📁 lib
        └──📁 cli
            └──📄 main.ex
```

```elixir
defmodule EngineTester.CLI.Main do
  @moduledoc """

  """

  @doc """
  ## 雑談

      このメソッドには、本来はスーパーバイザーの開始を書く

  """
  def start(_type, _args) do

    IO.puts("Hello, world!!")

    # 本来は、スーパーバイザーのPIDを返却する
    {:ok, self()}
  end
end
```

👇 以下のコードを追加  

📄 `mix.exs`:  

```elixir
  def application do
    [
      # ...

      ,

      # 実行するモジュール
      mod: {EngineTester.CLI.Main, []}
    ]
  end
```

Input:  

```shell
mix run
```

Output:  

```plaintext
Compiling 1 file (.ex)
Generated engine_tester app
Hello, world!!
```
