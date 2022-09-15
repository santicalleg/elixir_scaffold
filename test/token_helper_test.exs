defmodule TokenHelperTest do
  use ExUnit.Case
  alias ScaffoldCa.Utils.TokenHelper
  import ExUnit.Assertions
  import Mock

  test "should create tokens with given app name" do
    name = "sample"
    expected = [{"{app}", "Sample"}, {"{app_snake}", "sample"}]

    res = TokenHelper.initial_tokens(name)

    assert expected === res
  end

  test "should add tuple with defaults" do
    expected = [
      {"{app}", "Sample"},
      {"{app}", "ScaffoldCa"},
      {"{app_snake}", "scaffold_ca"}
    ]

    res = TokenHelper.add({"{app}", "Sample"})

    assert expected === res
  end

  test "should add tokens to existing lis" do
    expected = [
      {"{app}", "ScaffoldCa"},
      {"{app_snake}", "scaffold_ca"},
      {"{key_snake}", "value"},
      {"{key}", "Value"}
    ]

    res =
      TokenHelper.default_tokens()
      |> TokenHelper.add("key", "value")

    assert expected === res
  end

  test "should handle error when no elixir project" do
    with_mocks([{Mix.Project, [], [config: fn -> [] end]}]) do
      assert_raise RuntimeError, fn -> TokenHelper.default_tokens() end
    end
  end
end
