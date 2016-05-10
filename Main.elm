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
    , disableBack : Bool
    , disableNext : Bool
    , numberOfSlides : Int
    }
    
    
initalModel : Model
initalModel = 
    { slides = Slides.slides
    , currentSlide = 0
    , previousSlide = 0
    , disableBack = True
    , disableNext = False
    , numberOfSlides = length Slides.slides
    }


-- UPDATE
type Action
    = Next
    | Back



update : Action -> Model -> Model
update action model = 
    case action of
        Next ->
            let
                nextSlide = model.currentSlide + 1
                disableNext = if nextSlide + 1 == model.numberOfSlides then True else False
            in
                { model | previousSlide = model.currentSlide 
                , currentSlide = nextSlide
                , disableNext = disableNext
                , disableBack = False
                }
        Back ->
            let
                previousSlide' = model.currentSlide - 1
                disableBack = if previousSlide' == 0 then True else False
            in
                { model | previousSlide = model.currentSlide 
                , currentSlide = previousSlide'
                , disableNext = False
                , disableBack = disableBack
                }    


-- VIEW
view : Address Action -> Model -> Html
view address model =
    let
        wantedSlide = List.filter (\el -> el)
    in 
    div [] 
        [ main' 
            [ class "container slides" ]
            [ Slides.getSlide model.currentSlide model.slides ]
        , button 
            [ onClick address Back
            , class "btn btn-default btn-back" 
            , disabled model.disableBack
            ] 
            [ text "Back" ]
        , button 
            [ onClick address Next 
            , class "btn btn-default btn-next"
            , disabled model.disableNext
            ] 
            [ text "Next" ]        
        ]
    
    
    
main : Signal Html
main = 
    StartApp.start
        { model = initalModel
        , view = view
        , update = update
        }
