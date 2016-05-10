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
            "Me"
            1
            ( slideBasicTemplate
                "slide-1"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "About me" ]
                    , ul [] 
                        [ li [] [ text "Full Stack Dev" ]  
                        , li [] [ text "Not an Elm expert" ]  
                        , li [] [ text "Spanish-American" ]
                        , li [] [ text "Geek" ]
                        , li [] [ text "@davidgshannon" ]
                        , li [] [ text "Snesi on Github" ] 
                        ]
                    ]
                )
            )
        , Slide
            "Evan"
            2
            ( slideBasicTemplate
                "slide-1"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "About Evan Czaplicki" ]
                    , img
                        [ class "img-responsive"
                        , style [("margin", "10px auto")] 
                        , src "img/evan_czaplicki.jpg"]
                        [ ]
                    , ul [] 
                        [ li [] [ text "Phd in Asynchronous Functional Reactive Programming for GUIs" ]  
                        , li [] [ text "Creator of Elm" ]  
                        , li [] [ text "Worked at Prezi" ]
                        , li [] [ text "Works at NoRedInk" ] 
                        ]
                    ]
                )
            )
        , Slide
            "Evan vs Ben"
            3
            ( slideBasicTemplate
                "slide-1"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "About Evan Czaplicki" ]
                    , h2 [] [ text "Not this guy" ]
                    , img
                        [ class "img-responsive"
                        , style [("margin", "10px auto")] 
                        , src "img/evan vs ben.jpg"]
                        [ ]
                    ]
                )
            )
        , Slide
            "Index"
            4
            ( slideBasicTemplate
                "slide-1"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "Content" ]
                    , ul [] 
                        [ li [] [ text "Why Elm?" ]  -- Explain Evan's slides and the history of programming from js' point of view
                        , li [] [ text "What is Elm?" ] -- Explain the iphone comparison 
                        , li [] [ text "Demo" ] -- Show the buzzword bingo demo
                        ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            5
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history0.png" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            6
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history1.jpeg" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            7
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history2.jpeg" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            8
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history3.jpeg" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            9
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history4.png" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            10
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history5.png" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "History of Programming - as seen by JS"
            11
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "History of Programming" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "as seen from Javascript" ]
                    , img 
                        [ src "img/history6.png" 
                        , class "img-responsive"
                        ] [  ]
                    ]
                )
            )
        , Slide
            "What's the future"
            12
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "What's the future of programming?" ]
                    , h2 
                        [ class "subtitle" ]
                        [ text "Who's going to decide that future?" ]
                    ]
                )
            )
        , Slide
            "What's the future"
            12
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "Who's going to decide that future?" ]
                    , img 
                        [ class "img-responsive" 
                        , style [ ("margin", "10px auto") ]
                        , src "img/js_vs_fp.png" 
                        ]
                        [ ]
                    ]
                )
            )
        , Slide
            "What's the future"
            12
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "What's the future?" ]
                    , img 
                        [ class "img-responsive" 
                        , style [ ("margin", "10px auto") ]
                        , src "img/maintainability_vs_usability.jpg" 
                        ]
                        [ ]
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