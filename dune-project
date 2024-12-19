(lang dune 3.0)

(name moonbit-lang)

(generate_opam_files true)

(source
 (github moonbitlang/moonbit-compiler))
(homepage https://www.moonbitlang.com/)

(package
 (name moonbit-lang)
 (synopsis "moonbit language")
 (maintainers "Hongbo Zhang<bob.hongbo.zhang@idea.edu.cn>")
 (depends ocaml dune))
