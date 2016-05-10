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
    div [ class "row" 
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
                ( section [ class "col-md-12" ] 
                    [ h1 
                        [ class "main-title" ] 
                        [ text "Elm - Rethinking UI" ]
                    , p [ ] [ text "by David G. Shannon" ]
                    ]
                )
            )
        , Slide
            "Index"
            1
            ( slideBasicTemplate
                "slide-1"
                ( section [ class "col-md-12" ]
                    [ h1 [] [ text "Index" ]
                    , ul [] 
                        [ li [] [ text "Why Elm?" ]  -- Explain Evan's slides and the history of programming from js' point of view
                        , li [] [ text "What is Elm?" ] -- Explain the iphone comparison 
                        , li [] [ text "Demo" ] -- Show the buzzword bingo demo
                        ]
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