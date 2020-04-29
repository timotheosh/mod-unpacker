(defsystem "mod-unpacker"
  :version "0.1.0"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Cli tool that unpacks mods for Morrowind on Windows for a case-sensitive environment, like Linux, for running on OpenMw."
  :in-order-to ((test-op (test-op "mod-unpacker/tests"))))

(defsystem "mod-unpacker/tests"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on ("mod-unpacker"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for mod-unpacker"
  :perform (test-op (op c) (symbol-call :rove :run c)))
