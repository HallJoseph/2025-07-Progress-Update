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

#slide[
  #section-header("BACKGROUND")
]

#set page(
    header: [
      #set align(right)
      *Background*
    ]
  )

#slide[
  = A New Era
  This is an exciting time for wide field cosmological surveys:
  #v(10pt)

  /* Build MOCS here showing where data are on sky for these surveys */
  /* PLACEHOLDER MOC */
  #uncover((2, 3))[
    #set align(center)
    #image("assets/moc_for_progress.svg", width: 70%)
  ]

  #v(1fr)
  #only((2))[
    #set par(spacing: 10pt)
    For 2.5 years from 2019 #[#set text(fill: PRIMARY_COLOR)
     *eROSITA*] mapped the X-ray sky, so far providing 2 data releases 
    
    #[
      #set text(size:15pt)
      #set align(right)
      (_Brunner et al. 2022_, _Merloni et al. 2024_)
    ]
  ]

  #only(3)[
    #set par(spacing: 10pt)
    The optical sky has been well-mapped by #[#set text(fill: PRIMARY_COLOR)
     *DES*] and #[#set text(fill: PRIMARY_COLOR)
     *DESI*], with #[#set text(fill: PRIMARY_COLOR)
     *Euclid*] Q1 data providing a preview of the full data coming next year 
    
    #[
      #set text(size:15pt)
      #set align(right)
      (_DES Collaboration 2021_, _Dey et al. 2022_, _Euclid Collaboration 2025_)
    ]
  ]

  #v(20pt)
]

#slide[
  #section-header("LAST\nUPDATE")
]

#set page(
    header: [
      #set align(right)
      *Last Update*
    ]
  )

#[
  #section-header("SAMPLE\nSELECTION")
]

#set page(
    header: [
      #set align(right)
      *Sample Selection*
    ]
  )

#[
  #section-header("DATA\nANALYSIS")
]

#set page(
    header: [
      #set align(right)
      *Data Analysis*
    ]
  )


#[
  #section-header("RESULTS")
]

#set page(
    header: [
      #set align(right)
      *Results*
    ]
  )

