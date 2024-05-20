#set par(justify: true)
#set text(font: "DejaVu Sans", size: 12pt)

#set page(
  paper: "a4",
  margin: 0pt,
  header: [],
  footer: [])
#image("background-1.jpg", width: 100%, height: 100%)
#align(center)[
  #place(
    center + top,
    figure(
      image("Logo-Anastasia-Labs-V-Color02.png", width: 50%)),
  )
]

#pagebreak()
#set page(
  paper: "a4",
  margin: (left: 20mm, right: 20mm, top: 40mm, bottom: 35mm),
  header: [
    #align(right)[
      #image("Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
    ]
    #v(-0.5cm)
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(-3mm)
    #align(center)[ 
      Anastasia Labs – `<PROJECT>`
      #v(-3mm)
      Confidential
      #v(-3mm)
      Copyright © Anastasia Labs
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
#set text(size: 16pt)  // Reset text size to 11pt
= Data Structures Closeout Report
#set text(size: 12pt)  // Reset text size to 11pt
#v(10mm) \
#set terms(separator:[: ],hanging-indent: 30mm)
#show link: underline
/ Name of project: Anastasia Labs - The Trifecta of Data Structures: Merkle Trees, Tries, and Linked Lists for Cutting-Edge Contracts.
/ Project url:#link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-the-trifecta-of-data-structures-merkle-trees-tries-and-linked-lists-for-cutting-edge-contracts")
/ Project Number: 1000013
/ Project manager: Jonathan Rodriguez
/ Project Start Date: 2023-10-08
/ Project End Date: 2024-04-09
/ List of challenge KPIs and how the project addressed them:
- *Insufficient on-chain data structures hindering scalability of Cardano:* Implemented Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch to provide efficient and scalable data structures for Cardano smart contracts.
- *Limited 16kb Tx size and single UTXO per application:* Leveraged the EUTXO model and minting policies to create distributed data structures that can span multiple UTXOs, enabling larger and more complex smart contract applications.
/ List of project KPIs and how the project addressed them:
- *Provide generic and production-ready implementations:* Developed robust, optimized, and well-tested implementations of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch.
- *Ensure robustness through testing:* Implemented comprehensive unit tests to validate the correctness and reliability of the data structures.
- *Make the project fully open-source:* All developed code and documentation have been made publicly available under an MIT license.
/ Key achievements (in particular around collaboration and engagement):
- Successful implementation of Merkle trees, Tries, and Linked Lists in both Aiken and Plutarch, providing the Cardano developer community with advanced and scalable data structures.
- Extensive documentation and tutorials to help other developers understand and utilize these data structures in their Cardano projects.
- Collaboration with the Lenfi team to integrate the Linked List implementation into their governance solutions.
/ Key learnings:
/ Next steps for the product or service developed:
/ Final thoughts/comments:
/ Links to other relevant project sources or documents:
- *Project Repository:* #link("https://github.com/Anastasia-Labs/data-structures")
- *Plutarch:* 
  + Merkle trees: #link("https://github.com/Anastasia-Labs/plutarch-merkle-tree")
  + Linked Lists: #link("https://github.com/Anastasia-Labs/plutarch-linked-list")
  + Tries: #link("https://github.com/Anastasia-Labs/plutarch-trie") 
- *Aiken:* 
  + Merkle trees: #link("https://github.com/Anastasia-Labs/aiken-merkle-tree")
  + Linked Lists: #link("https://github.com/Anastasia-Labs/aiken-linked-list")
  + Tries: #link("https://github.com/Anastasia-Labs/aiken-trie") 
/ Link to Close out video:

