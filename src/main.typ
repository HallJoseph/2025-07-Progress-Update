#import "@preview/polylux:0.4.0": *
#import "@preview/cetz:0.3.2": *
#import "@preview/fletcher:0.5.5":*
#import "tequila-sunset.typ": *


#let date = "30 July 2025"
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
  = Galaxy Clusters: They're Like Dragons.
  
  #uncover((2,3,4,5))[
  They're the _largest gravitationally bound objects_,  only 20% of their baryons are in stars, the rest is in the X-ray emitting #[#set text(fill: PRIMARY_COLOR)
  *ICM*].]

  #only(2)[
    #[
      #set align(center)
      #image("assets/X-ray_and_optical_view_of_the_Perseus_galaxy_cluster.png", width: 70%)
    ]
    #v(1fr)
    #[
      #set text(size:15pt)
      #set align(right)
      _Image Credit: ESA/XMM-Newton/DSS-II/J. Sanders et al. 2019_
    ]
    #v(10pt)
  ]
  #only((3,4,5))[
    #grid(
      columns: (50%, 1fr),
      column-gutter: 10pt,
      [
        Studying the properties of the ICM allows us to construct #[#set text(fill: PRIMARY_COLOR) 
        *scaling relations*] for samples of clusters.

        #uncover((5,4))[
        Assuming that only gravity dictates these properties, the scaling relations can be fit by the #[#set text(fill: PRIMARY_COLOR)
        *self-similar model*].
        ]

        #uncover(5)[
          Deviations from the model are the result of extra astrophysics.
        ]
      ],
      [
        #uncover((5,4))[
          #set align(right)
          #image("assets/self-similar.png", width:98%)
          #v(1fr)
          #[
            #set text(size:15pt)
            #set align(right)
            _Image Credit: Lovisari & Maughan 2022_
          ]
          #v(10pt)
        ]
      ]
    )
  ]
]

#slide[
  = Cluster Cosmology
  
  Counting the number of clusters in the universe can help to constrain cosmological parameters, particulary #[#set text(fill: PRIMARY_COLOR)
        *$sigma_8$*] and #[#set text(fill: PRIMARY_COLOR)
        *$Omega#sub[M]$*]

  #only(1)[
    #set align(center)
    #image("assets/cosmo_constraints.svg", width: 70%)
    #v(1fr)
    #[
      #set text(size:15pt)
      #set align(right)
      _Image Credit: Ghirardini et al. 2024_
    ]
    #v(10pt)
  ]

  #only((2,3,4))[
    #grid(
      columns: (45%, 1fr),
      column-gutter: 10pt,
      [
        #uncover((2,3,4))[
          To do this effectively we need accurate #[#set text(fill: PRIMARY_COLOR)
        *selection functions*] 
        ]

        #uncover((3,4))[
        These need to be taken from #[#set text(fill: PRIMARY_COLOR)
        *large, unbiased samples*]
        ]

        #uncover(4)[
          Andreon et al. (2016) found diffs in scaling rels for #[#set text(fill: PRIMARY_COLOR)
          *optical and X-ray clusters*] 
        ]
      ],
      [
        #set align(right)
        #only(2)[
          #v(-23pt)
          #image("assets/erass_selection.svg", width: 100%)
          #v(1fr)
          #[
            #set text(size:15pt)
            #set align(right)
            _Image Credit: Clerc et al. 2024_
          ]
          #v(10pt)
        ]

        #only(3)[
          #image("assets/fig6.png")
          #v(1fr)
          #[
            #set text(size:15pt)
            #set align(right)
            _Image Credit: Bulbul et al. 2024_
          ]
          #v(10pt)
        ]

        #only(4)[
          #v(70pt)
          #image("assets/andreoplot.png")
          #v(1fr)
          #[
            #set text(size:15pt)
            #set align(right)
            _Image Credit: Andreon et al. 2016_
          ]
          #v(10pt)
        ]
      ]
    )
  ]
]

#slide[
  #emph-slide("Combining eROSITA data with clusters found in wide optical surveys gives the ideal platform to test these biases
  ", bg_colour: TERTIARY_COLOR)
]

#slide[
  = Last Update
  In September, I  presented these results from eRASS flux selected clusters and #[
    #set text(fill: PRIMARY_COLOR)
    *richness ($lambda$)*]
    selected from the SDSS survey analysed by a pipeline I wrote.
  #only(1)[
    #set align(center)
    #image("assets/prelimsr.svg", width: 70%)
  ]

  #only((2,3,4,5,6))[
    #grid(
      columns: (50%, 1fr),
      column-gutter: (10pt),
      [
        They are not great...

        #only((3,4,5,6))[
          - Flux rather than #[#set text(fill: TERTIARY_COLOR)
          *Luminosity ($L$)*] selected X-ray clusters
        ]

        #only((4,5,6))[
          - Optical sample poorly overlaps X-ray
        ]

        #only((5,6))[
          - Bad scaling relation fitting
        ]

        #uncover(6)[
          Over the past year I have been addressing these issues
        ]
      ],
      [
        #set align(right)
        #image("assets/prelimsr_narrow.png")
      ]
    )
  ]

  #v(1fr)
          #[
            #set text(size:15pt)
            #set align(right)
            _Bulbul et al. 2024, Rykoff et al. 2014_
          ]
          #v(10pt)
]

#[
  #section-header("SAMPLE\nSELECTION")
]

#set page(
    header: [
      #set align(right)
      *Sample Selection*
    ]
  )

#slide[
  = Choosing a Catalogue -- #teq-emph("X-rays", fill_col: TERTIARY_COLOR)
  For my samples, the catalogues I chose to use needed to have high #teq-emph("completeness", fill_col: TERTIARY_COLOR) and #teq-emph("purity", fill_col: TERTIARY_COLOR).

  #grid(
    columns: (50%, 1fr),
    column-gutter: 10pt,
    [
      #uncover((2,3,4,))[
        For the #teq-emph("X-ray selected", fill_col: TERTIARY_COLOR) sample, I continued using the primary eRASS1 cluster catalogue of >12,000 clusters.
      ]

      #uncover((3,4))[
        Comparisons with the eRASS1 digital twin estimate full catalogue purity of #teq-emph("86%", fill_col: TERTIARY_COLOR) and completeness of #teq-emph("~90%", fill_col: TERTIARY_COLOR).
      ]
    ],
    [
      #set align(right)
      #uncover((2,3,4))[
        #image("assets/fig14a.png")
      ]
    ]
  )

  #uncover(4)[
    Recent work in Balzer et al. (2025) has identified #teq-emph("1,000s", fill_col: TERTIARY_COLOR) more clusters in the eRASS1 data
  ]

  #uncover((2,3,4))[
    #v(1fr)
    #[
      #set text(size:15pt)
      #set align(right)
      _Image Credit: Bulbul et al. 2024_
    ]
    #v(10pt)
  ]
]

#slide[
  = Choosing a Catalogue -- #teq-emph("Optical")
  For my samples, the catalogues I chose to use needed to have high #teq-emph("completeness") and #teq-emph("purity").

  #only((2,3))[
    At first, I considered using catalogues based on #teq-emph("DES") data, as it covers the southern eROSITA sky and was well used at a conference

    #only(2)[
      DES MOC
    ]

    #only(3)[
      #set align(center)
      #v(1fr)
      But the only catalogue available in September was for "Science Validation" and contained a mere #teq-emph("787 clusters").
      
      Not nearly enough!
      #v(1fr)
    ]
  ]

  #only((4,5,6,7))[
    Next looked at the #teq-emph("DESI") catalogues, which cover more of the sky and have many more clusters.

    #[
      #set text(size: 20pt)
      #set align(center)
      #only(5)[
        #image("assets/clumpr.png", width: 60%)
        Yantovski-Barth et al. (2023) -- \~300,000 clusters
      ]
      #only(6)[
        #image("assets/zou.png", width: 60%)
        Zou et al. (2023) -- 540,432 clusters
      ]
      #only(7)[
        #image("assets/wenhan.png", width: 60%)
        Wen & Han (2024) -- >1.5 million clusters
      ]
    ]
  ]
]

#slide[
  = Choosing a Catalogue -- #teq-emph("Optical")
  #only(8)[
    To decide which of these three to use, I identified a region on the sky they overlapped with each other and
  ]
]

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

