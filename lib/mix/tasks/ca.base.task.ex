defmodule Mix.Tasks.Ca.BaseTask do
  @callback execute(args :: term) :: term

  defmacro __using__(opts) do
    quote do
      alias ScaffoldCa.Utils.DataTypeUtils
      use Mix.Task

      @version Mix.Project.config()[:version]
      @switches unquote(opts[:switches])
      @name unquote(opts[:name])

      def run([]) do
        Mix.Tasks.Help.run([@name])
      end

      def run([version]) when version in ~w(-v --version) do
        Mix.shell().info([:reset, "Scaffold version ", :green, "v#{@version}"])
      end

      @shortdoc unquote(opts[:description])
      def run(argv) do
        DataTypeUtils.parse_opts(argv, @switches)
        |> execute()
      end
    end
  end
end
