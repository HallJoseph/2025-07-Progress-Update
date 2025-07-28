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
    
}

#slide[
  #title-slide()
]

