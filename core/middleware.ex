defmodule Botbuilder.Core.Middleware do
  @type handler :: (context, (() -> none) -> none)

  @type set :: [handler]

  @spec run(set, context, (() -> none)) :: none

  def run([], context, next) do
    next.()
  end

  def run([handler | handlers], context, next) do
    handler.(context, fn -> run(handlers, context, next) end)
  end
end
