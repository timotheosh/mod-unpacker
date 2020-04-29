(defpackage mod-unpacker/tests/main
  (:use :cl
        :mod-unpacker
        :rove))
(in-package :mod-unpacker/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :mod-unpacker)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
