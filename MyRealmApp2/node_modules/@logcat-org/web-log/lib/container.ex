defmodule Container do
    def create() do
        Document.getElementById("app")
    end

    def firstChild() do
        Document.getElementById("app").firstChild
    end    
end
