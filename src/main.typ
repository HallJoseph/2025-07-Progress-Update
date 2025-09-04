#import "@preview/polylux:0.4.0": *
#import "@preview/cetz:0.3.2": *
#import "@preview/fletcher:0.5.5":*
#import "tequila-sunset.typ": *


#let date = "4 September 2025"
#let me = "Joseph Hall"
#let location = "New Results in X-Ray Astronomy 2025"
#let short_title = "Galaxy Clusters with eROSITA"
#let affiliation = "University of Bristol"

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
      
      _eROSITA_
    ]
    [
      #set text(fill: SECONDARY_COLOR)
      #set align(right)
      #v(1fr)

      *#me* and Ben Maughan

      #emph[#affiliation]

      #v(1fr)

      #emph[#location]
      
      #date
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

  /* Build MOCS here showing where data are on sky for these surveys */
  /* PLACEHOLDER MOC */
  #only((2))[
    
    #set align(center)
    #image("assets/erosita_view.png", width: 70%)
    
    #set align(left)
    #set par(spacing: 10pt)
    For 2.5 years from 2019 #[#set text(fill: PRIMARY_COLOR)
     *eROSITA*] mapped the X-ray sky, so far providing 2 data releases 
    
    #[
      #set text(size:15pt)
      #set align(right)
      _Brunner et al. 2022_, _Merloni et al. 2024_

      _Image Credit: Jeremy Sanders, Hermann Brunner and the eSASS team (MPE); Eugene Churazov, Marat Gilfanov (on behalf of IKI)_
    ]
  ]

  #only(3)[
    #set align(center)
    #image("assets/DESI_moc.png", width:70%)

    #set align(left)
    #set par(spacing: 10pt)
    The optical sky has been well-mapped by #[#set text(fill: PRIMARY_COLOR)
     *DES*] and #[#set text(fill: PRIMARY_COLOR)
     *DESI*], with #[#set text(fill: PRIMARY_COLOR)
     *Euclid*] Q1 data providing a preview of the full data coming next year 
    
    #[
      #set text(size:15pt)
      #set align(right)
      _DES Collaboration 2021_, _Dey et al. 2022_, _Euclid Collaboration 2025_

      _Image credit: Wen & Han 2024 via VizieR_
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

/* #slide[
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
*/

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
        For the #teq-emph("X-ray selected", fill_col: TERTIARY_COLOR) sample, I used the primary eRASS1 cluster catalogue of >12,000 clusters.
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

/*
#slide[
  = Choosing a Catalogue -- #teq-emph("Optical")
  For my samples, the catalogues I chose to use needed to have high #teq-emph("completeness") and #teq-emph("purity").

  #only((2,3))[
    At first, I considered using catalogues based on #teq-emph("DES") data, as it covers the southern eROSITA sky with the highest exposure

    #only(2)[
      #set align(center)
      #image("assets/DESObservingStrategy_Lahav2016-768x460.png", width: 60%)

      #v(1fr)
      #[
        #set text(size:15pt)
        #set align(right)
        _Image Credit: Lahav et al. 2016_
      ]
      #v(10pt)
    ]

    #only(3)[
      #set align(center)
      #v(1fr)
      But the only catalogue available at the time was for "Science Validation" and contained a mere #teq-emph("787 clusters").
      
      Not nearly enough!
      #v(1fr)
      #[
        #set text(size:15pt)
        #set align(right)
        _Rykoff et al. 2016_
      ]
      #v(10pt)
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
        Zou et al. (2021) -- 540,432 clusters
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
  To decide which of these three to use, I selected a sample of each from a region on the sky they overlapped with each other.

  #only(1)[
    #set align(center)
    #image("assets/test_region.png", width: 90%)
  ]

  #only((2))[
    I then checked the #teq-emph("redshift") overlap with the eRASS1 catalogue: 
  ]

  #only(2)[
    #set align(center)
    #v(-5pt)
    #image("assets/zhists.png", width: 60%)
  ]

  #only((3))[
    #grid(    
      columns:(50%, 1fr),
      column-gutter: 10pt,
      [
        And then cross-matched to it to estimate #teq-emph("purity and completeness"):
      ],
      [
        #only(3)[
          #image("assets/cluster_matching_flowchart_helvetica.svg", width:70%)
      ]
    ]
    )
  ]
  #only(4)[
    And then cross-matched to it to estimate #teq-emph("purity and completeness")
    #set text(size:15pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 10pt,
      [
        #v(15pt)
        #image("assets/clumpr_richness.png")
        #v(1fr)
        _Yantovski-Barth et al. (2023)_
        #v(10pt)
      ],
      [
        #v(15pt)
        #set align(center)
        #image("assets/zou_richness.png")
        #v(1fr)
        _Zou et al. (2021)_
        #v(10pt)
      ],
      [
        #v(15pt)
        #set align(right)
        #image("assets/wenhan_richness.png")
        #v(1fr)
        _Wen & Han (2024)_
        #v(10pt)
      ]
    )
  ]
]
*/

#slide[
  = Choosing a Catalogue -- #teq-emph("Optical")
  For my samples, the catalogues I chose to use needed to have high #teq-emph("completeness") and #teq-emph("purity").

  #only((2))[
    The #teq-emph("DESI") legacy survey has studied large areas of the sky and several cluster catalogues have been produced.
  ]

  #only(3)[
    Of these, I used the #teq-emph("Wen & Han (2024)") catalogue of over 1.5~million clusters across the whole sky.
    
    #[
      #set align(center)
      #image("assets/wenhan.png", width: 60%)
    ]

    #[
      #set text(size:15pt)
      #set align(right)
      #v(1fr)
      _Wen & Han (2024)_
      #v(10pt)
    ]
  ]

]

/*#slide[
  #emph-slide("Wen & Han (2024) is the\nbest optical catalogue for the work\nI want to do.")
]*/

#slide[
  = Sample Cross-Matching
  Cross-matched the catalogues in a search area where the eRASS1 exposure > 170 s & where the #teq-emph("eRASS sky", fill_col: TERTIARY_COLOR) intersects with the #teq-emph("Wen & Han field") for $0.1 < z < 0.2$.

  #uncover(2)[
    #v(-20pt)
    #set align(center)
    #image("assets/moc_for_progress.svg")
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

#slide[
  = #teq-emph("X")-rays #teq-emph("G")enerate and #teq-emph("A")nalyse
  #grid(
    columns: (1fr, 15%, 15%),
    column-gutter: 10pt,
    [
      #v(10pt)
      A mission agnostic platform for processing and analysing X-ray data.
    ],
    [
      #image("assets/daxa.svg", width:100%)
    ],
    [
      #image("assets/XGA.svg", width: 100%)
    ]
  )
  #uncover(2)[
    #grid(
      columns: (55%, 1fr),
      column-gutter: 10pt,
      [
        #set align(center)
        #image("assets/xga_erass_temps.svg", width: 80%)
      ],
      [
        #v(40pt)
        Validated XGA results by comparing its cluster temperatures with those from the eRASS catalogue.
      ]
    )
  ]

  #v(1fr)
  #v(1fr)
    #[
      #set text(size:15pt)
      #set align(right)
      _Turner et al. 2022, 2024a, 2024b_
    ]
    #v(10pt)
]

#slide[
  = Scaling Relations -- Set-up

  I measured luminosities ($L$) with #teq-emph("XGA") and took richnesses ($lambda$) from the #teq-emph("Wen & Han (2024)") catalogue for all clusters in the samples.
  
  #uncover((2,3,4))[
    Uncertainties were taken from the XGA results for $L$ and as the square root error on the number of galaxies in the cluster for $lambda$
  ]

  #uncover((3,4))[
    Produced two scaling relations for each of the cluster samples: #[#set text(fill: PRIMARY_COLOR)
      *$L-T$*] & #[#set text(fill: PRIMARY_COLOR)
      *$L-lambda$*]
  ]


  #uncover((4))[
    Account for cluster evolution by adjusting $L$ by the standard evolution factor $E(z)$
  ]
]

#slide[
  = Scaling Relations -- Fitting
  Rather than simple least squares regression I used Sereno~(2015)\'s #teq-emph("LI")near #teq-emph("R")egression in #teq-emph("A")stronomy (LIRA) package.

  #uncover((2,3))[
    #grid(
      columns: (40%, 1fr),
      column-gutter: 10pt,
      [
        Improvement as it does #teq-emph("Bayesian") linear regression and can account for intrinsic scatters and biases from selection effects. 
      ],
      [
        #image("assets/hmf-lm.png")
      ]
    )
  ]

  #uncover(3)[
    #set align(center)
    See #teq-emph("Zoe Altria's") talk on her work fitting scaling relations!
  ]

  /*#uncover((3,4))[
    To aid LIRA and #teq-emph("reduce degeneracies"), I set pivots on my data at: $L_0 = 10^(43)$ erg s#super($-1$), $k T_0 = 3.55$ keV, and $lambda_0 = 109$. 
  ]

  #uncover(4)[
    For bias modelling, I set these thresholds: $L$#sub("thresh") $ = 10^(43.5)$ erg s#super($-1$) and $lambda$#sub("thresh") $ = 10$ for the #teq-emph("eRASS selected", fill_col: TERTIARY_COLOR) clusters, and $lambda$#sub("thresh") $ = 43.7$ for the #teq-emph("optically selected") sample.
  ]
  */
]

#[
  #section-header("RESULTS")
]

#set page(
    header: [
      #set align(right)
      *Results*
    ]
  )

#slide[
  #image("assets/scalingrels.svg")
]

#slide[
  = Discussion
  #grid(
    columns: (50%, 1fr),
    column-gutter: 10pt,
    [ 
      The optical sample has a #[#set text(fill: PRIMARY_COLOR)
      *steeper slope ($beta$)*] for both relations.

      #uncover((2,3,4))[
        BUT the errors on these results are still very large...
      ]

      #uncover((3,4))[
        Differences in #[#set text(fill: PRIMARY_COLOR)
      *scatter ($sigma$)*] are significant, which needs further investigation.
      ]

      #uncover((4))[
        Similar to Andreon et al. (2016), we see a lot of high $lambda$, low $L$ clusters in the optical sample missed by the X-ray
      ]
    ],
    [
      #set align(right)
      #image("assets/restab.png", width: 100%)
      #image("assets/scalingrels.svg")
    ]
  )
]

#slide[
  = Future Work
  
  My samples are currently very #teq-emph("incomplete"). I have used only 35 from each selection method of a possible 500 that I identified during sample selection:

  #image("assets/remaining_clusts.svg", width:90%)
]

#slide[
  #set page(
    fill: TERTIARY_COLOR,
    footer: "",
    header: ""
  )
  #set text(fill: SECONDARY_COLOR, size: 30pt)

  = SUMMARY
  #v(20pt)
  #list(
    tight: false,
    marker: "‣"
  )[
    Previous works have suggested that we are missing clusters, impacting cosmology
  ][
    I am trying to investigate this by comparing scaling relations of cluster properties
  ][
    Currently, the results are inconclusive but indicate that there might be something going on
  ][
    The more complete sample will help 
  ]

  #v(20pt)
  #uncover(2)[
    #set align(center)
    ANY QUESTIONS?
  ]
]
