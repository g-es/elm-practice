module Api.TodoTasks exposing (..)
import Http
import Json.Decode exposing (..)

getTodoTasks : (Result Http.Error (List String) -> msg) -> Cmd msg
getTodoTasks msg =
    Http.get
        { url = "http://localhost:4000/api/task"
        , expect = Http.expectJson msg (Json.Decode.list Json.Decode.string)
        }
    