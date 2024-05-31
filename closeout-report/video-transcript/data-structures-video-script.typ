#let image-background = image("../images/background-1.jpg", height: 100%, fit: "cover")
#let image-foreground = image("../images/Logo-Anastasia-Labs-V-Color02.png", width: 100%, fit: "contain")
#let image-header = image("../images/Logo-Anastasia-Labs-V-Color01.png", height: 75%, fit: "contain")
#let fund-link = link("https://projectcatalyst.io/funds/10/f10-osde-open-source-dev-ecosystem/anastasia-labs-the-trifecta-of-data-structures-merkle-trees-tries-and-linked-lists-for-cutting-edge-contracts")[Catalyst Proposal]
#let git-link = link("https://github.com/Anastasia-Labs/data-structures")[Main Github Repo]

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
#align(center)[#strong[Project Closout Report Script]]

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
      #image("../images/Logo-Anastasia-Labs-V-Color01.png", width: 25%, fit: "contain")
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
      Project Closeout Report Script
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
#align(center)[
  #set text(size: 16pt)
  #strong["The Trifecta of Data Structures: Merkle Trees, Tries, and Linked Lists for Cutting-Edge Contracts"]]

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 1")
#set text(size: 11pt)  // Reset text size to 10pt

#v(10pt)
= Introduction
#v(10pt)

\ Hello, Cardano community! I'm Mladen Lamesevic from Anastasia Labs. 

I'm excited to present the closeout report for our project, "The Trifecta of Data Structures: Merkle Trees, Tries, and Linked Lists for Cutting-Edge Contracts." 

In this presentation, I'll cover why we embarked on this project, how we executed it, and the outcomes we achieved. Let's dive in!

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 2")
#set text(size: 11pt)  // 
\ // Which challenge did you enter and why?
== Project Context and Importance

\ First, a bit of context.
 
We entered the Open Source Dev Ecosystem Challenge because the Cardano ecosystem faces scalability challenges due to constraints like the single UTXO model and the 16kb transaction size limit.
  
Additionally, there is a noticeable absence of shared design patterns as well as limited practical examples and educational resources for scaling solutions in the Cardano community.

To address these challenges, we focused on implementing robust on-chain data structures —Merkle Trees, Tries, and Linked Lists— in two of Cardano's scripting languages, Aiken and Plutarch. 

These structures are essential for enhancing the scalability and efficiency of DApps on Cardano and provide efficient solutions within the blockchain's constraints.
#v(10pt)

\ // What was the approach you submitted in your proposal application which was eventually funded?
= Project Objectives

\ Our primary objectives were:

- To design and develop efficient data structures—Merkle Trees, Tries, and Linked Lists— for the Cardano blockchain in Aiken and Plutarch.
- To ensure these data structures are thoroughly tested and production-ready.
- To provide detailed, easy-to-follow documentation to help developers implement these structures.
#v(10pt)

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 3")
#set text(size: 11pt)  // 
\ // Please explain any particular technical solutions you proposed and the amount of funding you received.
= Execution and Milestones

\ We approached the challenge by doing research on data structures and developing those that could have the biggest impact. We then divided our project into three phases: design and development, testing, and documentation.

== Phase 1: Design & Development
\ We successfully designed and developed the following data structures in both Plutarch and Aiken, each with its unique purpose and benefits:

We chose to go with Aiken and Plutarch as opposed to the other Cardano development languages, such as PlutusTx because;

- Aiken, is particularly known for its expressive syntax, strong typing system and is rapidly gaining community adoption whereas, 

- Plutarch is known for its ability to manipulate outcomes at a lower level (close to UPLC), which enables more control over the execution of smart contracts, leading to more efficient and compact scripts.

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 4")
#set text(size: 11pt)  // 
- *Merkle Tree:* The Merkle Tree is valuable in proving the presence of arbitrary data within the tree structure. By carrying only the root hash in the script, an efficient and space-saving proof can be generated, ensuring data integrity and validity.

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 5")
#set text(size: 11pt)  // 
- *Trie (Stick Breaking Set):* Developed with comprehensive functionality for Aiken and Plutarch, the Trie is particularly useful in facilitating mutable data storage in scripts by leveraging the sharing of common prefixes. This approach optimizes storage efficiency and enables more extensive data manipulation within the constrained on-chain environment.

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 6")
#set text(size: 11pt)  // 
- *Linked List:* Created to enhance scalability and throughput in smart contracts, the Linked List leverages the EUTXO model to significantly enhance scalability and throughput. By linking multiple UTXOs together through a series of minting policies and validators, it improves the user experience interacting with smart contracts concurrently.

With this outlined approach of the execution of these technical solutions, we received a total funding of ₳238,374 from Catalyst Fund 10. To date, we have received ₳105,000, with ₳133,374 remaining to be distributed upon the completion of all milestones.

Each design pattern was tagged with a release version, enabling the community to track progress and updates.

\
== Phase 2: Thorough Testing

\ We conducted rigorous testing for all three data structures to ensure their robustness and efficiency. Each data structure was subjected to code reviews and thorough unit tests, with results integrated into a CI/CD pipeline.
We ensured that all design patterns passed the unit testing phase successfully.

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 7")
#set text(size: 11pt)  // 
\
== Phase 3: Comprehensive Documentation

\ We focused on creating comprehensive, user-friendly, and visually engaging documentation for each data structure. Our aim was to ensure that developers of varying skill levels could understand, implement, and leverage these data structures effectively. Our documentation includes:

- *Merkle Tree:* Detailed guides and practical examples which can be found at.
  - Aiken: https://github.com/Anastasia-Labs/aiken-merkle-tree
  - Plutarch: https://github.com/Anastasia-Labs/plutarch-merkle-tree

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 8")
#set text(size: 11pt)  // 
- *Trie:* Step-by-step instructions and tutorials can be found here;
  - Aiken: https://github.com/Anastasia-Labs/aiken-trie
  - Plutarch: https://github.com/Anastasia-Labs/plutarch-trie

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 9")
#set text(size: 11pt)  // 
- *Linked List:* Clear diagrams and use cases can be found at;
  - Aiken: https://github.com/Anastasia-Labs/aiken-linked-list.
  - Plutarch: https://github.com/Anastasia-Labs/plutarch-linked-list

All documentation is well-organized, well-structured, and accessible to developers of varying skill levels and can be found in our #git-link: https://github.com/Anastasia-Labs/data-structures


#v(10mm)
// Once your project went live, how did you progress? What learnings and challenges did you find along the way? Were you able to keep the project within the scope of your application? What milestones/KPIs did you set at the outset, and did you achieve them? Importantly, what were the fund challenges, and did you achieve them? What did you not achieve? What other major achievements were there?

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 10 ")
#set text(size: 11pt)  // 
= Achievements and Outcomes

\ We are thrilled to share the remarkable outcomes of our project, which we are hopeful will significantly contribute to the Cardano ecosystem:

- *Implementation of Advanced Data Structures:* Our team has pioneered the development and implementation of advanced data structures (Merkle Trees, Tries, and Linked Lists) in Aiken and Plutarch, enhancing the scalability of DApps on Cardano by allowing for more efficient use of the limited 16kb transaction size and the single UTXO model.
- *Extensive Documentation and Tutorials:* As you have seen, we are proud to have enriched the Cardano community with educational resources by providing comprehensive documentation and tutorials to help developers understand and utilize these data structures in their projects, covering the gap of limited scaling solution resources.
- *Collaboration with Industry Leaders:* Our data structures have already garnered interest from industry leaders like SundaeSwap Labs. They successfully integrated our LinkedList implementation into their Single Asset Staking library and Taste Test mechanism, showcasing the real-world applicability of our work.

- *Quality Assurance:* Through rigorous code reviews and comprehensive unit tests, we have ensured that our implementations are not only reliable but also efficient, setting a benchmark for future developments in the community.
#v(10mm)

= Key Learnings and Challenges

\ Throughout the project, we encountered several challenges and gained valuable insights:

- *Efficient Data Integrity with Merkle Trees:* We gained a deep understanding of constructing and verifying Merkle proofs, which enhanced our ability to implement secure and efficient data validation processes.
- *Flexibility and Efficiency with Linked Lists:* Leveraging Plutarch’s functional programming paradigm and Aiken’s robust type system to create Linked Lists that are both efficient and easy to maintain highlighted the importance of designing for efficient insertion and deletion operations.
- *Managing Mutable Data with Tries:* We learned to optimize storage by sharing common prefixes and implementing fast update and lookup operations.
- *Further Experience with Plutarch and Aiken:* We got to appreciate Plutarch’s ability to provide more efficient and precise control over data structures, facilitating the construction of intricate data structures and optimizing the performance of smart contracts on the Cardano blockchain. 
Aiken’s expressive syntax and strong typing system also contributed to writing more clear and maintainable.

\ // What next for the product/service you have developed? If appropriate, please tell us about any commercialization/exploitation plans you have now that your funded project is complete, particularly whether you are seeking further funding and what the funding would be used for.

#set text(size: 20pt) // Reset text size to 10pt
#strong("Slide 11")
#set text(size: 11pt)  // 
// Aiken property based testing:... https://github.com/aiken-lang/fuzz
= Future Prospects and Community Impact

\ These data structures hold immense promise for Cardano’s ecosystem. 

As Cardano continues to grow and evolve, developers will seek efficient solutions to overcome scalability challenges. Our data structures provide precisely that—scalability within the blockchain’s constraints. 

Imagine DApps that can handle more users, transactions, and complex smart contracts seamlessly. We anticipate early adopters will soon recognize their value, paving the way for broader adoption.

- *Sparking Interest and Collaboration:* We've already generated interest and discussions within the community. By inviting developers to collaborate, participate in our community and twitter spaces, we foster a vibrant ecosystem and accelerate adoption.

- *Continuous Improvement:* Feedback from the community ensures ongoing enhancements, making our data structures even stronger and more reliable.

- *Comprehensive Documentation:* We are committed to improving our documentation with tutorials, real-world examples, and troubleshooting guides, empowering developers of all skill levels.

- *Long-Term Commitment:* We will keep our libraries up-to-date with the ever-evolving Cardano ecosystem, ensuring our data structures remain relevant. By maintaining the open-source approach and transparent development process, we believe will inspire confidence and trust within the community.

#v(10mm)
= Conclusion:

\ In conclusion, our project has successfully bridged a critical gap in the Cardano ecosystem by providing essential data structures and comprehensive documentation. We believe these tools will significantly enhance the scalability and functionality of Cardano-based applications. 

Thank you for your support and interest in our work. For more information, visit our GitHub repository at 
https://github.com/Anastasia-Labs/data-structures.

If you want to know more about Anastasia Labs or contact us, you can visit 

- Our website at https://anastasialabs.com/
- Follow us on twitter at https://x.com/AnastasiaLabs
- Join our discord community: https://discord.com/invite/8TYSgwthVy



See you next time!

Goodbye!

#v(10mm)


// *Verification Against Criteria:*

// + Which challenge did you enter and why?
 
//  #emph(text(green)[Met:]) Described in "Project Context and Importance" with reasons for choosing the challenge.

// + What was the approach you submitted in your proposal application which was eventually funded?
  
//   #emph(text(orange)[Partially Met:]) Discussed the focus on implementing robust on-chain data structures but lacks specific mention of the approach submitted in the proposal.

// + Please explain any particular technical solutions you proposed and the amount of funding you received.
  
//   #emph(text(green)[Met:]) Explained technical solutions (Merkle Trees, Tries, Linked Lists) as well as the amount of funding received.

// + Once your project went live, how did you progress? What learnings and challenges did you find along the way? Were you able to keep the project within the scope of your application? What milestones/KPIs did you set at the outset, and did you achieve them? Importantly, what were the fund challenges, and did you achieve them? What did you not achieve? What other major achievements were there?

//   #emph(text(orange)[Partially Met:]) Discussed progress and outcomes, but lacks detailed learnings, specific challenges, and KPI achievements. No mention of fund challenges.

// + Please include a demonstration of the project outputs, such as the software or dapp product or service, and how it works. If the project is non-technical, please provide evidence of the deliverables and work that you have completed.

//   #emph(text(green)[Met:]) Provided links to GitHub repositories for each data structure, demonstrating project outputs.

// + What next for the product/service you have developed? If appropriate, please tell us about any commercialization/exploitation plans you have now that your funded project is complete, particularly whether you are seeking further funding and what the funding would be used for.

//   #emph(text(green)[Met:]) Discussed future prospects, ongoing improvements, and long-term commitment to the project. No specific mention of commercialization or further funding plans.

// *Recommendations for Full Compliance:*

// - Approach Submitted in Proposal: Include a brief summary of the approach you submitted in your proposal and how it was eventually funded.
// - Funding Amount: Mention the amount of funding received for better transparency.
// - Learnings and Challenges: Add details about specific learnings, challenges faced during the project, and how they were addressed.
// - Milestones and KPIs: Specify the milestones/KPIs set at the outset and discuss if they were achieved.
// - Fund Challenges: Include any challenges related to funding and how they were overcome







