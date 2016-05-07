module Slides where

import Html exposing (..)
import Html.Attributes exposing (..)
import String
import Array exposing (..)

type alias Slide = 
    { title : String
    , number : Int
    , html : Html
    }
    

slideBasicTemplate : String -> Html -> Html
slideBasicTemplate slideID content = 
    div [ class "slide" 
        , id slideID 
        ] 
        [ content 
        ]

    
slides : Array Slide
slides =
    fromList 
        [ Slide 
            "Cover"
            0
            ( slideBasicTemplate 
                "slide-0"
                ( div [] 
                    [ h1 [ ] [ text "Elm - Rethinking UI" ]
                    , p [ ] [ text "by David G. Shannon" ]
                    ]
                )
            ) 
            
        ]
    
getSlide : Int -> Array Slide -> Html
getSlide index slides' = 
    case get index slides' of
        Just slide ->
            slide.html
        Nothing ->
            h1 [] [text "404 Not Found"]