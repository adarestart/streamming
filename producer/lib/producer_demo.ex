defmodule ProducerDemo do
  def push_memory() do
  # Your solution here
    Kaffe.Producer.produce_sync("Memory used by processes (MB)", to_string(:erlang.memory(:processes_used)/(1024*1024)))
    Kaffe.Producer.produce_sync("CPU utilization (%)", to_string(:cpu_sup.util()))
    :timer.sleep(2000)
    push_memory()
  end
end
