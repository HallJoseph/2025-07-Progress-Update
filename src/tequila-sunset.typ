// Impots and page set up 
//    Should really set up a template if I'm gonna be using 
//    typst more
//    ...
//    Surrely this can be the start of one
#import "@preview/polylux:0.4.0": *

#let PRIMARY_COLOR = rgb("#e07523ed")
#let SECONDARY_COLOR = rgb("#ffffff")
#let TEXT_COLOR = black.lighten(25%)

#let tequila-sunset-theme(me, location, short_title, date: datetime.today().display(),  aspect-ratio: "4-3",  body) = {
  set page(
    paper: "presentation-" + aspect-ratio,
    margin: 1.5cm,
    footer: text(
      size: 15pt, 
      [
        #set text(fill: TEXT_COLOR)
        #me #h(1fr) | #h(1fr) #short_title #h(1fr) | #h(1fr) #date #h(1fr) | #h(1fr) *#toolbox.slide-number*
      ]
    )
    
    // header: text(
    //   size: 15pt,
    //   [
    //     #h(1fr) #short_title
    //   ]
    // )
  )
  set text(fill: TEXT_COLOR, size: 25pt, font: "helvetica")
  body
}

#let section-header(title, bg_colour: PRIMARY_COLOR, text_colour: SECONDARY_COLOR) = {
  set page(
    fill: bg_colour,
    footer: "",
    header: ""
  )
  set align(horizon)
  set align(center)
  set text(
    fill: text_colour,
    size: 60pt,
    weight: "black"
  )
  title
}
