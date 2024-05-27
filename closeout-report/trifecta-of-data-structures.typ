#let image-background = image("background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-the-trifecta-of-data-structures-merkle-trees-tries-and-linked-lists-for-cutting-edge-contracts")[Catalyst Proposal]
#let git-link = link("https://github.com/Anastasia-Labs/data-structures")[Main Github Repo]


#set page(background: image-background)

#v(3cm) // Add vertical space
#set text(font: "Montserrat", size: 11pt, fill: white)

#align(center)[
  #box(
    width: 60%,
    stroke: none,
    align(center)[
        #image-foreground
        #v(6mm) // Add vertical space
        #text(size: 20pt,[#strong[Closeout Report]])        
    ]
  )
]

#v(9cm) // Add vertical space
// Display project details
#show link: underline
#set terms(separator:[: ],hanging-indent: 18mm)

/ Project: The Trifecta of Data Structures
/ URL: #fund-link
/ Number: 1000013 \
/ Start Date: 2023-10-08 \
/ End Date: 2024-03-31 \

#set text(font: "Montserrat", size: 11pt, fill: luma(0%))

#set par(justify: true)
#set page(
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 35mm),
  background: none,
  header: [
    #align(right)[
      #image("Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
    ]
    #v(-0.5cm)
    #line(length: 100%, stroke: 0.5pt)
  ],
)
#counter(page).update(0)  // Set page counter 0 on cover page

#v(20mm)
#show outline.entry.where(level: 1): it => {
  v(6mm, weak: true)
  strong(it)
}

#text(size: 24pt, [#strong[Contents]])  // Manually create the title with size 20pt
#v(20mm)

#outline(title: none, depth:2, indent: 1.5em)
#pagebreak()
#set text(size: 11pt)  // Reset text size to 10pt
#set page(
   footer: [
    #set text(fill: gray)
    #line(length: 100%, stroke: 0.5pt)
    #v(-3mm)
    #align(center)[ 
      *Anastasia Labs – The Trifecta of Data Structures*
      #v(-3mm)
      Closeout Report
      #v(-3mm)
      Copyright © 
      #set text(fill: black)
      Anastasia Labs
    ]
    #v(-6mm)
    #align(right)[
      Page #counter(page).display(  // Page numbering
        "1 of 1",
        both: true,
      )
      ]
  ] 
)

#v(10mm)
#set text(size: 16pt)  // Set text size to 16pt
= List of KPIs
#set text(size: 11pt)  // Reset text size to 10pt
#v(10mm)
// #set terms(separator:[: ],hanging-indent: 30mm)

== Challenge KPIs
\
  + *Enhancing Scalability of Cardano:*  Given the inherent constraints of the blockchain, such as the ledger rules and transaction size limitations, we challenged ourselves to build advanced data structures (Merkle trees, Tries, and Linked Lists). These structures enable larger and more complex smart contract applications, which are significant to enhancing the scalability of DApps on Cardano.

  + *Addressing Insufficient onchain data structures hinders scalability of Cardano:* Recognising the absence of shared design patterns and limited availability of practical examples for scaling solutions in the Cardano community. We implemented advanced data structures (Merkle trees, Tries, and Linked Lists in Aiken and Plutarch) and provided comprehensive, well structured and easy to understand documentation and tutorials, thereby enriching the educational resources available to developers whilst providing efficient and scalable data structures for Cardano smart contracts as well as serving as a valuable resource for developers looking to understand and implement these data structures in their own projects.
  + *Ensuring Code Quality and Production-Ready Resources:* The project upheld high standards of code quality, adherence to best practices and readiness for production in the implementation of these structures through thorough code reviews and unit tests, to ensure reliability and efficiency for the developer community.
\
== Project KPIs
List of project KPIs and how the project addressed them:
\
\
+ *Provide generic and production-ready implementations:* The team developed robust, optimized, and well-tested implementations of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch, providing functional and efficient data structures for real-world smart contract applications.

+ *Ensure robustness through thorough Testing:* The project ensured the reliability of the data structures through comprehensive code review and unit testing, validating their correctness and efficiency.

+ *Make the project fully open-source:* All developed code, documentation, tutorials and examples of validator scripts to validate and showcase these library implementations have been made publicly available under an MIT license and can be found in the #git-link.

// + *Community Engagement and Collaboration:* By making the project fully open-source on the #git-link, we as well as the community can easily monitor various metrics on GitHub as indicators of community interest and adoption. We intend to track the number of stars, forks, pull requests and contributions in the repository. Feedbacks, discussions, and questions on the project’s GitHub repository will also be monitored to assess the level of community engagement with the project.

#v(10mm)
#set text(size: 16pt)  // Set text size to 16pt
= Key achievements
#set text(size: 11pt)  // Reset text size to 11pt
#v(10mm)

- *Implementation of Advanced Data Structures:* We successfully developed and implemented advanced data structures (Merkle trees, Tries, and Linked Lists) in Aiken and Plutarch. These structures enhance the scalability of DApps on Cardano by allowing for more efficient use of the limited 16kb transaction size and the single UTXO model.

- *Extensive documentation and tutorials:* We are proud to have enriched the Cardano community with educational resources by providing comprehensive documentation and tutorials to help developers understand and utilize these data structures in their projects.

#v(10mm)
#set text(size: 16pt)  // Set text size to 16pt
= Key learnings:
#set text(size: 11pt)  // Reset text size to 11pt
We grew a lot in experience implementing Merkle Trees, Linked Lists and Tries in Plutarch and Aiken in various ways;

- *Efficient Data Integrity with Merkle Trees:* We gained a deep understanding of constructing and verifying Merkle proofs, which enhanced our ability to implement secure and efficient data validation processes.

- *Flexibility and Efficiency with Linked Lists:*  Leveraging Plutarch's functional programming paradigm and Aiken's robust type system to create Linked Lists that are both efficient and easy to maintain, highlighted the importance of designing for efficient insertion and deletion operations.

- *Managing Mutable Data with Tries:*  learned to optimize storage by sharing common prefixes and implementing fast update and lookup operations.

- *Leveraging Plutarch and Aiken's Strengths:* We got to appreciate Plutarch's composability and functional programming features, which facilitated the construction of intricate data structures. Aiken's expressive syntax and strong typing system contributed to writing clear and maintainable code, ensuring that smart contracts are both robust and efficient.
// #pagebreak()
#set text(size: 11pt)  // Reset text size to 11pt
#v(10mm)

#set text(size: 16pt)  // Set text size to 16pt
= Next steps
#set text(size: 11pt)  // Reset text size to 10pt
\
*Continuous Improvement:* Based on the feedback and insights from the community, we plan to continue refining and optimizing our implementations of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch.

*Community Engagement and Collaboration:* We intend to monitor various metrics on GitHub as indicators of community interest and adoption such as tracking the number of stars, forks, pull requests and contributions in the repository. Feedbacks, discussions, and questions on the project’s GitHub repository will also be monitored to assess the level of community engagement with the project.

#v(10mm)
#set text(size: 16pt)  // Set text size to 16pt
= Final thoughts/comments:
#set text(size: 11pt)  // Reset text size to 10pt
\
We are incredibly proud to add open source libraries to the Cardano communities. Our implementations of advanced data structures in Aiken and Plutarch not only enhance the scalability of DApps on Cardano but also serve as a valuable resource for the developer community. We look forward to seeing how these tools are used and adapted in future Cardano projects.

#v(10mm)
#set text(size: 16pt)  // Set text size to 16pt
= Resources 
#set text(size: 11pt)  // Reset text size to 10pt
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


