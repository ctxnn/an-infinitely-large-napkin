#import "@preview/adaptable-pset:0.2.0": *
#import "@preview/note-me:0.5.0": *

// Feel free to omit any of the below, just set it to "" and it won't show
#let title = "An Infinitely Large Napkin"
#let author = "Chirag Taneja"
#let collaborators = []
#let course-id = "Short Notes"
#let instructor = "Evan Chen"
#let semester = "Summer 2025"
// #let due-time = ""

#show: homework.with(
  title: title,
  author: author,
  collaborators: collaborators,
  course-id: course-id,
  instructor: instructor,
  semester: semester,

  // Optional setting to change the paper size depending on region
  // (Defaults to A4)
  // paper-size: "us-letter", 
)

// Enable to get a latex-like look
// #set text(font: "New Computer Modern")

// Set Numbering (optional)
#set enum(numbering: "1.")

/*=================================
  Packages you may want to enable
=================================*/

// #import "@preview/quick-maths:0.2.0": shorthands
// #show: shorthands.with(
//   ($|=$, math.tack.double),
// )

// #import "@preview/diverential:0.2.0": *
// #import "@preview/physica:0.9.4": *

// #import "@preview/codly:1.2.0": *
// #import "@preview/codly-languages:0.1.8": *
// #codly(languages: codly-languages)
// #show: codly-init

#set page(header: none, margin: 1in)
#set text(size: 15pt)
//#set text(align: justify)



= Some Pre-requistes
\

1. === Set theory

Okay so I will revise all the set concepts from the book's appendix 

- ${1, 2, 3} subset.eq  NN subset.eq RR$
- $phi subset.eq A $
- power set $arrow A = {1, 2}$ then $2^A = {phi, {1}, {2}, {1,2}}$
- $union ->$ Union
- $inter ->$ Intersection
- $ backslash ->$ Not in 
- $ f:A -> B$ represents a function f from A to B mapping elements of A to B 
- $f: A arrow.curve B$ means the function from A to B is "one to one" which means the function is injective
- $f: A ↠ B$ means the function from A to B is "onto" which means the function is surjective
- function $f: A -> B$ is bijective if it is both injective and surjective, for each $b in B$ there is $a in A$ such that $f(a) = b$
- equivalence relation $~$
  - reflexive: $ x ~ y$
  - symmetric: $ x ~ y$
  - transitive: $ x ~ y "and" y ~ z "then" y ~ z$
\
that was all about set theory 


2. === Proof writing

I will update this section later on, because i dont know about this now that much 



#note[
Several hints and solutions can be found in Appendices B and C
]
#pagebreak()

= Chapter 1: Starting Out
\


 == 1. Groups 

A group is a pair $ G = (G, star)$ consisting of a set of elements G, and a binary operation $star$ on G, such that: 
\

- G has an identity element $1_G$, with property that 
$
  1_G star g = g star 1_G, "where" g in G
$
- The operation is associative, $(a star b) star c = a star (b star c)$
- Each element $g in G$ has an inverse, that is, an element $ h in G$ such that 
$
  g star h = h star g = 1_G
$, the above line means $->$ $"for every a" in G, "there is an" a^-1 in G "such that" a dot a^-1 = 1_G$

It is not required that $star$ is commutative, so we say that the group is *non-abelian*, if the operation is commutative then the group is *abelian*
\

The main for properties of group are 
  + Closure 
  + Associativity 
  + Identity 
  + Inverses 

Some non-abelian examples: 
+ General Linear Group - $("GL"_n (RR), times)$
+ Special Linear Group - $("SL"_n (RR), times)$
+ Symmetric Group - $("S"_n, circle)$
+ Dihedral Group of order 2n - $D_"2n"$
  - reflection 
  - rotation 
  - ex $->$ $"rs" "not equal to sr"$ 

#note("a trivial group is group with only an identity element, often denoted with 0 or 1, we will denote it as {1}" )


==== *isomorphisms*: 

let $ZZ$ = {$dots$,-2,-1,0,1,2,$dots$} and $10ZZ$ = {$dots$,-20,-10,0,10,20,$dots$}

these are different, but they only differe in the names of elements 

formally, 
$
  phi:ZZ->10ZZ "by" x -> 10x
$
in symbols, 
$
  phi(x + y) = phi(x) + phi(y)
$

that's all just formalism for capturing the obvious fact that $(ZZ,+) "and" (10ZZ,+)$ are the same thing

Let $G= (G,star) "and" H = (H,*)$ be groups. A bijection $ϕ: G→H$ is
called an *isomorphism* if
$ϕ("g1" star "g2") = ϕ("g1") * ϕ("g2") "for all" "g1,g2" in G.$
If there exists an isomorphism from G to H, then we say G and H are isomorphic and
write $G approx.eq H$, that means they both share same properties related to their structures 

*btw ϕ = $phi$ *

