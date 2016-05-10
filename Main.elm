module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Array exposing (..)
import Html.App as Html
import Keyboard exposing (..)
import Slides exposing (..)

-- MODEL
type alias Model = 
    { slides : Array (Slide Msg)
    , currentSlide : Int
    , previousSlide : Int
    , disableBack : Bool
    , disableNext : Bool
    , numberOfSlides : Int
    }
    
    
initalModel : Model
initalModel = 
    { slides = slides
    , currentSlide = 0
    , previousSlide = 0
    , disableBack = True
    , disableNext = False
    , numberOfSlides = length slides
    }


init : (Model, Cmd Msg)    
init =
    (initalModel, Cmd.none)


-- UPDATE
type Msg
    = Next
    | Back
    | NoOp



update : Msg -> Model -> (Model, Cmd Msg)
update action model = 
    case action of
        Next ->
            let
                nextSlide = model.currentSlide + 1
                disableNext = if nextSlide + 1 == model.numberOfSlides then True else False
                newModel = 
                    { model | previousSlide = model.currentSlide 
                    , currentSlide = nextSlide
                    , disableNext = disableNext
                    , disableBack = False
                    }
            in
                (newModel, Cmd.none)
        Back ->
            let
                previousSlide' = model.currentSlide - 1
                disableBack = if previousSlide' == 0 then True else False
                newModel = 
                    { model | previousSlide = model.currentSlide 
                    , currentSlide = previousSlide'
                    , disableNext = False
                    , disableBack = disableBack
                    }
            in
                (newModel, Cmd.none)
                
        NoOp ->
            (model, Cmd.none)





-- VIEW
view : Model -> Html Msg
view model =
    let
        wantedSlide = getSlide model.currentSlide model.slides
    in 
    div [] 
        [ main' 
            [ class "container slides" ]
            [ wantedSlide.html ]
        , button 
            [ onClick Back
            , class "btn btn-default btn-back" 
            , disabled model.disableBack
            ] 
            [ text "Back" ]
        , button 
            [ onClick Next 
            , class "btn btn-default btn-next"
            , disabled model.disableNext
            ] 
            [ text "Next" ]        
        ]



-- SUBSCRIPTIONS
keyActions : KeyCode -> Msg
keyActions keyCode = 
    case keyCode of
        39 -> 
            Next
        37 ->
            Back
        _ ->
            Next

subscriptions : Model -> Sub Msg
subscriptions model =
  Keyboard.ups keyActions



main : Program Never   
main = 
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
