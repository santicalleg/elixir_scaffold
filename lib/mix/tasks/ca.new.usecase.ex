defmodule Mix.Tasks.Ca.New.Usecase do
  @moduledoc """
  Creates a new usecase for the clean architecture project
      $ mix ca.new.usecase [name_usecase]
  """

  alias ScaffoldCa.Core.ApplyTemplate
  alias Mix.Tasks.Ca.BaseTask

  use BaseTask,
    name: "ca.new.usecase",
    description: "Creates a new usecase"

  def execute({[], [name]}) do
    ApplyTemplate.apply(:usecase, name)
  end

  def execute(_any), do: run(["-h"])
end
