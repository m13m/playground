module PhotoGroove exposing (main)

import Array exposing (Array)
import Browser
import Html exposing (Html, br, button, div, h1, h3, img, text, input, label)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


photoListUrl : String
photoListUrl =
    "http://elm-in-action.com/list-photos"


urlPrefix =
    "http://elm-in-action.com/"

-- custom type to represent the thumbnail size

type ThumbnailSize 
    = Small
    | Medium
    | Large

type Msg 
    = ClickedPhoto String 
    | ClickedSize ThumbnailSize
    | ClickedSurpriseMe 

-- <function> : List ( String, Bool ) -> Attribute msg

view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ 
        
        h1 [] [ text "Photo Groove" ]
        
        , button
            [ onClick ClickedSurpriseMe ]
            [ text "Surprise Me!" ]
        
        , h3 [] [text "Thumnail Size:"]
        
        , div [id "choose-size"] 
                (List.map viewSizeChooser [Small, Medium, Large])
        
        , div [ id "thumbnails" , class (sizeToString model.chosenSize) ]
            (List.map (viewThumbnail model.selectedUrl) model.photos)
        
        , img
            [ class "large"
            , src (urlPrefix ++ "large/" ++ model.selectedUrl)
            ]
            []
        ]



-- every funciton in elm is curried which means it can partially applied


viewThumbnail : String -> Photo -> Html Msg
viewThumbnail selectedUrl thumb =
    img
        [ src (urlPrefix ++ thumb.url)
        , classList [ ( "selected", selectedUrl == thumb.url ) ]
        , onClick (ClickedPhoto  thumb.url )
        ]
        []

viewSizeChooser : ThumbnailSize -> Html Msg 
viewSizeChooser size = 
    label []
    [input [type_ "radio", name "size", onClick (ClickedSize size)] []
    , text (sizeToString size)
    ]


sizeToString : ThumbnailSize -> String 
sizeToString size = 
    case size of 
        Small -> 
            "small"
        Medium -> 
            "med"
        Large -> 
            "large"    



type alias Photo =
    { url : String }


type alias Model =
    { photos : List Photo
    , selectedUrl : String
    , chosenSize : ThumbnailSize
    }


initialModel : Model
initialModel =
    { photos =
        [ { url = "1.jpeg" }
        , { url = "2.jpeg" }
        , { url = "3.jpeg" }
        ]
    , selectedUrl = "1.jpeg"
    , chosenSize = Medium
    }


photoArray : Array Photo
photoArray =
    Array.fromList initialModel.photos

getPhotoUrl : Int -> String 
getPhotoUrl index = 
    case Array.get index photoArray of    
        Just photo ->
            photo.url 

        Nothing ->
            ""    

update : Msg -> Model -> Model 
update msg model =
    case msg of 
        ClickedPhoto url  -> 
            { model | selectedUrl = url }


        ClickedSurpriseMe -> 
            { model | selectedUrl = "2.jpeg" }
        ClickedSize size -> 
            {model | chosenSize = size}
       
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
