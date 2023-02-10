defmodule ConsumerDemo do
  def handle_message(%{key: key, value: value} = message) do
    IO.puts "#{key}: #{value}"
    # Your solution here
    :ok
  end
end
