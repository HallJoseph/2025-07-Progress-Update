#import "@preview/polylux:0.4.0": *
#import "@preview/cetz:0.3.2": *
#import "@preview/fletcher:0.5.5":*
#import "tequila-sunset.typ": *


#let date = "31 July 2025"
#let me = "Joseph Hall"
#let location = "Astro Lunch Meeting"
#let short_title = "Progress Update"

#enable-handout-mode(false)

#show: tequila-sunset-theme.with(
  me, 
  location,
  short_title,
  date: date,
  aspect-ratio: "4-3"
)

#let title-slide() = {
  set page(
      fill: PRIMARY_COLOR,
      footer: ""
    )
    set text(fill: rgb("#000000"))
    [
      #set text(size: 70pt, weight:"bold", font:"Charter")
      #set par(spacing: 16pt)
      X-ray Properties of 
      
      Galaxy Clusters with 
    ]
    [
      #grid(
        columns: (50%, 1fr),
        column-gutter: 10pt,
        [      
          #[
            #set text(size: 70pt, weight:"bold", font:"Charter")
            #set par(spacing: 16pt)
            _eROSITA_
          ]
          #v(1fr)
          #[
            #set text(fill: SECONDARY_COLOR)
            #set text(size: 30pt, weight:"bold")
            Progress Update
          ]
          #[
            #set text(fill: SECONDARY_COLOR)
            #v(1fr)

            #me #h(1fr) 
          
            #emph[#location]

            #v(1fr)

            #date
          ]          
        ],
        [
          /* TODO: nice image here to represent the theme of the talk */
          /* PLACEHOLDER FOR NOW */
          #v(1fr)
          #image("assets/scalingrels.svg", width: 100%)
        ]
      )
    ]
}

#slide[
  #title-slide()
]

