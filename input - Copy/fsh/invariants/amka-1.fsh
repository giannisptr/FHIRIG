Invariant: amka-1
Description: "AMKA must be an 11-digit string."
* severity = #error
* expression = "value.matches('^\\\\d{11}$')"
* xpath = "matches(text(), '^\\\\d{11}$')"
* requirements = "AMKA must be an 11-digit string."