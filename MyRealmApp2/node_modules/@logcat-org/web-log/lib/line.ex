defmodule Line do
    def create(data, container) do
        text = data.line
        color = data.type |> Line.colorByType
        Line.create(text, color, container)
    end

    def create(text, color, container) do
        element = Document.createElement("div")
        Document.createTextNode(text) |> element.appendChild
        element |> Line.setColor(color)
        container.insertBefore(element, Container.firstChild())
    end

    def setColor(element, color) do
        element.style
        |> ElixirScript.JS.mutate("backgroundColor", color)
    end

    def colorByType(type) do
        case type do
            "error" -> "#f2dede"
            "warning" -> "#fcf8e3"
            "success" -> "#dff0d8"
            "info" -> "#d9edf7"
        end
    end

end
