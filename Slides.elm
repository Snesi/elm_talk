module Slides exposing (slides, getSlide, Slide)

import Html exposing (..)
import Html.Attributes exposing (..)
import Array exposing (..)


type Msg = NoOp

type alias Slide a = 
    { title : String
    , number : Int
    , html : Html.Html a
    }


slideBasicTemplate : String -> Html a -> Html a
slideBasicTemplate slideID content = 
    div [ class "row" 
        , id slideID 
        ] 
        [ content 
        ]

    
slides : Array (Slide a)
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
                        [ li [] [ text "Phd in Asynchronous Functional Programming for GUIs" ]  
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
            13
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
            14
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
        , Slide
            "Elm principles"
            15
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "User-Focused Language" ]
                    , ul [] 
                        [ li [] [ text "Gradual Learning" ]
                        , li [] [ text "Communication" ] 
                        , li [] [ text "Culture" ]
                        , li [] [ text "Usage-driven design" ]
                        , li [] [ text "Tooling" ]
                        ]
                    ]
                )
            )
        , Slide
            "Elm principles"
            16
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "Gradual Learning" ]
                    , h2
                        [  ]
                        [ text "The Html module slowly teaches you the Elm Architecture" ]
                    , h2
                        [  ]
                        [ text "Get ready for da code!" ]
                    ]
                )
            )
        , Slide
            "Elm principles"
            17
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "Tooling" ]
                    , ul [] 
                        [ li [] [ text "Time Travel Debugger" ]
                        , li [] [ text "Package Manager" ] 
                        , li [] [ text "Friendly Errors" ]
                        , li [] [ text "Forced semver" ]
                        , li [] [ text "Excellent docs and examples" ]
                        ]
                    ]
                )
            )
        , Slide
            "What is Elm"
            18
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "What is Elm?" ]
                    , h2 
                        []
                        [ text "a Functional Programming Language with:" ]
                    , ul [] 
                        [ li [] [ text "Virtual Dom (aka React.js)" ]
                        , li [] [ text "Unidirectional dataflow (aka Flux)" ] 
                        , li [] [ text "Concise modern syntax" ]
                        , li [] [ text "Immutable values" ]
                        , li [] [ text "Stateless functions" ]
                        ]
                    ]
                )
            )
        , Slide
            "What is Elm"
            19
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "What else?" ]
                    , ul [] 
                        [ li [] [ text "Elm is freakin fast" ]
                        , li [] [ text "Same value for same input allows easy caching" ] 
                        , li [] [ text "No runtime exceptions" ]
                        , li [] [ text "No undefined is not a function!" ]
                        , li [] [ text "No need for sourcemaps" ]
                        ]
                    ]
                )
            )
        , Slide
            "What is Elm"
            20
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ div 
                        [ class "row" ] 
                        [ div 
                            [ class "col-md-3 col-md-offset-2" 
                            , style [("font-size", "40px")]
                            ]
                            [ text "ELM" ]
                        , div
                            [ class "col-md-1" 
                            , style [("font-size", "40px")]
                            ]
                            [ text "~" ]
                        , div
                            [ class "col-md-3"
                            , style [("font-size", "40px")] 
                            ]
                            [ p [] [ text "Flow.js" ]
                            , p [] [ text "Immutable.js" ]
                            , p [] [ text "React.js" ]
                            , p [] [ text "Redux.js" ]
                            ]
                        ]
                    ]
                )
            )
        , Slide
            "What's the future"
            21
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "The complete package" ]
                    , img 
                        [ class "img-responsive" 
                        , style [ ("margin", "10px auto") ]
                        , src "img/elm_iphone.png" 
                        ]
                        [ ]
                    ]
                )
            )
        , Slide
            "What's the future"
            22
            ( slideBasicTemplate
                "slide-2"
                ( section [ class "col-md-12" ]
                    [ h1 
                        [ class "title" ] 
                        [ text "DEMO TUTORIAL" ]
                    ]
                )
            )
            
        ]
    
getSlide : Int -> Array (Slide a) -> Slide a
getSlide index slides' = 
    case get index slides' of
        Just slide ->
            slide
        Nothing ->
            Slide 
                "Not Found"
                0
                (h1 [] [text "404 Not Found"])