module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Array exposing (..)
import StartApp.Simple as StartApp

import Signal exposing (Address)
import Slides 

-- MODEL
type alias Model = 
    { slides : Array Slides.Slide
    , currentSlide : Int
    , previousSlide : Int
    }
    
    
initalModel : Model
initalModel = 
    { slides = Slides.slides
    , currentSlide = 0
    , previousSlide = 0
    }


-- UPDATE
type Action
    = Next
    | Back


update : Action -> Model -> Model
update action model = 
    case action of
        Next ->
            { model | previousSlide = model.currentSlide 
            , currentSlide = model.currentSlide + 1
            }
        Back ->
            { model | previousSlide = model.currentSlide 
            , currentSlide = model.currentSlide - 1
            }
    
    
-- VIEW
view : Address Action -> Model -> Html
view address model =
    let
        wantedSlide = List.filter (\el -> el)
    in 
    div [ ]
        [ Slides.getSlide model.currentSlide model.slides 
        , button [ onClick address Back ] [ text "Back" ]
        , button [ onClick address Next ] [ text "Next" ]
        ]
    
    
main : Signal Html
main = 
    StartApp.start
        { model = initalModel
        , view = view
        , update = update
        }
