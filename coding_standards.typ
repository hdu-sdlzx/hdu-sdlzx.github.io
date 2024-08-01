#set text(lang: "zh",region: "zh", font:"Noto Sans Caucasian Albanian")

#show link: underline

// The size of text. The recommend resume text size is from `10pt` to `12pt`
#set text(size: 10pt,)

// Feel free to change the margin below to best fit your own CV
#set page(margin: (x: 0.9cm, y: 1.3cm),)

= Coding Standards and Guidelines
#link("https://isocpp.org/wiki/faq/coding-standards")[Coding Standards FAQ]

== C++编程指导
=== #link("https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines",)[C++ Core Guidelines]
  _The aim of this document is to help people to use modern C++ effectively._
=== #link("https://iso-iec-jtc1-sc22-wg23-cpp.github.io/wg23-tr24772-10-public/",)[ISO/IEC TR 24772-10]
  _Avoiding vulnerabilities in programming languages — Part 10: Vulnerability descriptions for programming language C++_
=== #link("https://wiki.sei.cmu.edu/confluence/display/seccode",)[CERT C++ Coding Standard]
  _This standard provides rules for secure coding in the C++ programming language._

== 知名行业、公司、项目的编程规范
=== #link( "https://google.github.io/styleguide/cppguide.html", )[Google C++ Style Guide]
  _These rules exist to keep the code base manageable while still allowing coders to use C++ language features productively._
=== #link("https://llvm.org/docs/CodingStandards.html")[LLVM Coding Standards]
  _This document describes coding standards that are used in the LLVM project._
=== #link("https://www.autosar.org/fileadmin/standards/R22-11/AP/AUTOSAR_RS_CPP14Guidelines.pdf",)[AUTOSAR] 
  _Guidelines for the use of the C++14 language in critical and safety-related systems._ \
  车载领域的编程规范。已于2019年移交MISRA后演进为MISRA C++ 2023（适用于C++17），但未找到免费的公开版本。
