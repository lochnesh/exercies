defmodule ElixirPrintingQuotes do
  Application.load(:elixir_printing_quotes)
  @author Application.get_env(:elixir_printing_quotes, :author)
  @quote Application.get_env(:elixir_printing_quotes, :quote)

  def main(_args) do
    the_quote = @quote.get()
    author = @author.get()
    IO.puts(get_output(author, the_quote))
  end

  def get_output(author, the_quote) do
    author <> " says, \"" <> the_quote <> "\""
  end

end