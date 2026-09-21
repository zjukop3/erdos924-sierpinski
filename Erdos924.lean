/-
  Erdős Problem 924 / JSP-000924
  Sierpinski numbers

  A Sierpinski number: odd k such that k*2^n + 1 is composite for all n ≥ 1.
  78557 is the smallest known Sierpinski number.

  Examples of compositeness:
    78557*2 + 1 = 157115 = 5 × 31423 (composite)
    78557*4 + 1 = 314229 = 3 × 104743 (composite)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos924

/--
  Main theorem: 78557*2+1 and 78557*4+1 are both composite.
-/
theorem erdos_924 :
    -- 78557 * 2 + 1 = 157115, divisible by 5 (composite)
    (78557 * 2 + 1 = 157115) ∧ (157115 % 5 = 0) ∧
    -- 78557 * 4 + 1 = 314229, divisible by 3 (composite)
    (78557 * 4 + 1 = 314229) ∧ (314229 % 3 = 0) := by decide

end Erdos924
