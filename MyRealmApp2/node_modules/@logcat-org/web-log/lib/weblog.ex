defmodule WebLog do

    def createWebSocket(url) do
        WebSocket.create(url)
    end

    def start() do
        container = Container.create()
        WebLog.createWebSocket("ws://localhost:8080")
        |> WebLog.bindOnMessage(container)
    end

    def bindOnMessage(ws, container) do
        ws.addEventListener("message", fn (event) -> event |> WebLog.onMessage(container) end)
    end

    def onMessage(event, container) do
        event.data
        |> Json.parse
        |> Line.create(container)
    end
end
