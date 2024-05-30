#let image-background = image("images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-the-trifecta-of-data-structures-merkle-trees-tries-and-linked-lists-for-cutting-edge-contracts")[Catalyst Proposal]
#let git-link = link("https://github.com/Anastasia-Labs/data-structures")[Main Github Repo]
#let taste-test-link = link("https://sundae.fi/posts/sundaeswap-presents-the-taste-test")[Taste Test]
#let single-asset-staking-link = link("https://sundae.fi/posts/sundaeswap-presents-the-taste-test")[Single Asset Staking]
https://github.com/Anastasia-Labs/single-asset-staking
#set page(
  background: image-background,
  paper :"a4",
  margin: (left : 20mm,right : 20mm,top : 40mm,bottom : 30mm)
)

// Set default text style
#set text(15pt, font: "Barlow")

#v(3cm) // Add vertical space

#align(center)[
  #box(
    width: 60%,
    stroke: none,
    image-foreground,
  )
]

#v(1cm) // Add vertical space

// Set text style for the report title
#set text(20pt, fill: white)

// Center-align the report title
#align(center)[#strong[PROJECT CLOSE-OUT REPORT]]

#v(5cm)

// Set text style for project details
#set text(13pt, fill: white)

// Display project details
#table(
  columns: 2,
  stroke: none,
  [*Project Number*], [1000013],
  [*Project manager*], [Jonathan Rodriguez],
  [*Date Started*], [2023-10-08],
  [*Date Completed*], [2024-03-31],
)

// Reset text style to default
#set text(fill: luma(0%))

// Display project details
#show link: underline
#set terms(separator:[: ],hanging-indent: 18mm)

#set par(justify: true)
#set page(
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 35mm),
  background: none,
  header: [
    #align(right)[
      #image("images/Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
    ]
    #v(-0.5cm)
    #line(length: 100%, stroke: 0.5pt)
  ],
)

#v(20mm)
#show link: underline
#show outline.entry.where(level: 1): it => {
  v(6mm, weak: true)
  strong(it)
}

// Initialize page counter
#counter(page).update(0)

#outline(depth:2, indent: 1em)
#pagebreak()
#set text(size: 11pt)  // Reset text size to 10pt
#set page(
   footer: [
    #set text(size: 11pt, fill: gray)
    #line(length: 100%, stroke: 0.5pt)
    #v(-3mm)
    #align(center)[ 
      *Anastasia Labs – The Trifecta Of Data Structures*
      #v(-3mm)
      Project Closeout Report
      #v(-3mm)
      // Copyright © 
      // #set text(fill: black)
      // Anastasia Labs
    ]
    #v(-6mm)
    #align(right)[
      #counter(page).display(  // Page numbering
        "1/1",
        both: true,
      )
      ]
  ] 
)

// Display project details
#set terms(separator:[: ],hanging-indent: 18mm)
/ Project Name: The Trifecta of Data Structures
/ URL: #link("link")[#fund-link]

#v(10pt)
= List of KPIs
#v(10pt)

== Challenge KPIs
\
  + *Enhancing scalability of Cardano:*  Given the inherent constraints of the blockchain, such as the ledger rules and transaction size limitations, we challenged ourselves to build advanced data structures (Merkle trees, Tries, and Linked Lists). These structures enable larger and more complex smart contract applications, which are significant to enhancing the scalability of DApps on Cardano.

  + *Addressing insufficient onchain data structures on Cardano:* Recognising the absence of shared design patterns and limited availability of practical examples for scaling solutions in the Cardano community. We implemented advanced data structures (Merkle trees, Tries, and Linked Lists in Aiken and Plutarch) and provided comprehensive, well structured and easy to understand documentation and tutorials, thereby enriching the educational resources available to developers whilst providing efficient and scalable data structures for Cardano smart contracts as well as serving as a valuable resource for developers looking to understand and implement these data structures in their own projects.
  + *Ensuring code quality and production-ready resources:* The project upheld high standards of code quality, adherence to best practices and readiness for production in the implementation of these structures through thorough code reviews and unit tests, to ensure reliability and efficiency for the developer community.
\
== Project KPIs
List of project KPIs and how the project addressed them:
\
\
+ *Provide generic and production-ready implementations:* The team developed robust, optimized, and well-tested implementations of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch, providing functional and efficient data structures for real-world smart contract applications.

+ *Ensure robustness through rigorous testing:* The project ensured the reliability of the data structures through comprehensive code review and unit testing, validating their correctness and efficiency.

+ *Make the project fully open-source:* All developed code, documentation, tutorials and examples of validator scripts to validate and showcase these library implementations have been made publicly available under an MIT license and can be found in the #git-link.

#pagebreak()
#v(10mm)
= Key achievements
#v(10mm)

- *Implementation of advanced data dtructures:* We successfully developed and implemented advanced data structures (Merkle trees, Tries, and Linked Lists) in Aiken and Plutarch. These structures enhance the scalability of DApps on Cardano by allowing for more efficient use of the limited 16kb transaction size and the single UTXO model.

- *Extensive documentation and tutorials:* We are proud to have enriched the Cardano community with educational resources by providing comprehensive documentation and tutorials to help developers understand and utilize these data structures in their projects.

// sunday swap and single asset staking for sundayswap linkedlists and taste test  
// https://sundae.fi/posts/sundaeswap-presents-the-taste-test
// https://github.com/Anastasia-Labs/single-asset-staking
- *Collaboration with Sundayswap:* We worked closely with the SundaeSwap team to integrate our linked list implementation into their #single-asset-staking-link library and the SundaeSwap "#taste-test-link" mechanism. This collaboration helped showcase the practical applications of our data structure work and its benefits for real-world Cardano projects. 

#v(10mm)
= Key learnings:
\
- *Efficient data integrity with Merkle Trees:* We gained a deep understanding of constructing and verifying Merkle proofs, which enhanced our ability to implement secure and efficient data validation processes.

- *Flexibility and efficiency with Linked Lists:*  Leveraging Plutarch's functional programming paradigm and Aiken's robust type system to create Linked Lists that are both efficient and easy to maintain, highlighted the importance of designing for efficient insertion and deletion operations.

- *Managing mutable data with Tries:*  We learned to optimize storage by sharing common prefixes and implementing fast update and lookup operations. This expertise was further demonstrated through our collaboration with SundaeSwap.

- *Further experience with Plutarch and Aiken:* We got to appreciate Plutarch’s ability to provide more efficient and precise control over data structures, facilitating the construction of intricate data structures and optimizing the performance of smart contracts on the Cardano blockchain because it oprates at a much lower level. Aiken's expressive syntax and strong typing system  also contributed to writing more clear and maintainable code.

#v(10mm)

= Next steps
\
*Continuous improvement:* Based on the feedback and insights from the community, we plan to continue refining and optimizing our implementations of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch.

*Community engagement and collaboration:* We intend to monitor various metrics on GitHub as indicators of community interest and adoption such as tracking the number of stars, forks, pull requests and contributions in the repository. Feedbacks, discussions, and questions on the project’s GitHub repository will also be monitored to assess the level of community engagement with the project. Additionally, we will explore opportunities for further collaboration with other Cardano projects, building on our successful integration with SundaeSwap, to showcase the practical applications of our advanced data structure implementations.

#v(10mm)
= Final thoughts/comments:
\
We are incredibly proud to add open source libraries to the Cardano community. We believe our implementations of advanced data structures in Aiken and Plutarch (and hopefully other languages/frameworks in the future) not only enhance the scalability of DApps on Cardano, but also serve as a valuable resource for the developer community. We look forward to seeing how these tools are used and adopted in future Cardano projects.

#v(10mm)
= Resources 
Links to other relevant project sources or documents: 
#v(5mm)

#box(height: 100pt, columns(3, gutter: 1pt)[
  == Project 
  \
  #link("https://github.com/Anastasia-Labs/data-structures")[Main Github Repo]
  #v(1mm)
  #fund-link /// Linkd to Catalyst

  == Plutarch
  \
  #link("https://github.com/Anastasia-Labs/plutarch-merkle-tree")[Merkle trees] \
  #v(1mm)
  #link("https://github.com/Anastasia-Labs/plutarch-linked-list")[Linked Lists] 
  #v(1mm)
  #link("https://github.com/Anastasia-Labs/plutarch-trie")[Tries] 

  == Aiken
  \
  #link("https://github.com/Anastasia-Labs/aiken-merkle-tree")[Merkle trees] \
  #v(1mm)
  #link("https://github.com/Anastasia-Labs/aiken-linked-list")[Linked Lists] \
  #v(1mm)
  #link("https://github.com/Anastasia-Labs/aiken-trie")[Tries] 
])
#v(10mm)

#align(center)[== Closeout Video <link-other> #link("link11_placeholder")]


