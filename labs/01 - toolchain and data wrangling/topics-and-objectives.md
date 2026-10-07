# Lab 01 - Toolchain and data wrangling

## Topics

### RStudio IDE & Project Discipline

- Project encapsulation using .Rproj files.
- Justification of .Rproj vs standalone R scripts (anchors working directory, opens fresh R instance [process and RAM isolation), connects to Git repository).
- Project-relative file path resolution (here::here) instead of hardcoded paths.
- Environment inspection, data viewing, variable debugging, package management.

### Integration with Quarto

- Quarto is the next-generation reporting engine that eliminates error-prone copy-pasting by unifying narrative prose, LaTeX mathematics, and executable analytical code into a single source of truth.
- Architecture of .qmd files: YAML metadata, Markdown text, and executable code chunks.
- Chunk execution controls (echo, eval, warning, message, cache).
- Mathematical typesetting using inline and display LaTeX ($...$ vs $$...$$)
- Single-click compilation to standalone HTML or PDF report.

### R Coding Style & Functional Paradigm

- Tidyverse ecosystem of packages.
- The Tidyverse style guide: naming conventions (snake_case), spacing, and formatting (https://style.tidyverse.org/).
- Justification of this style (empirical code is read, audited, and peer-reviewed more often than it is written - standard is aimed at readability).
- Automatic formatting using styler package.
- Linear workflow construction using the native pipe operator (|>).
- Vectorized column operations vs. procedural for-loops.

### File I/O with readr & Data Storage Formats

- Delimited text I/O using readr::read_csv() and write_csv().
- Binary object serialization and metadata preservation using write_rds() and read_rds().
- Reading large Parquet files.

### Missing value semantics (NA vs. NULL vs. NaN)

- Distinction between missing data (NA), mathematically undefined results (NaN), and total object absence (NULL).
- NA (Not Available): Represents missing empirical values; preserves vector length and data type; propagates through calculations unless cleared with na.rm = TRUE; checked via is.na().
- NaN (Not a Number): Represents undefined real arithmetic (e.g., 0/0, log(-1)); acts as a sub-type of NA (is.na(NaN) is TRUE); checked via is.nan().
- NULL (Null Object): Represents absolute object absence (length 0); vanishes inside vectors; used to delete columns (df$col <- NULL); checked via is.null().

### Core Data Wrangling with dplyr and tidyr

- Row filtering with compound logical operators (filter).
- Column selection, renaming, and tidy-selectors (select).
- Feature engineering and conditional branching (mutate, case_when).
- Grouped statistical aggregation and cell counts (group_by, summarize, n()).
- Principles of "Tidy Data" (variables as columns, observations as rows).
- Wide-to-long pivoting for repeated measures and mixed-effects models (pivot_longer).
- Long-to-wide pivoting for correlation and difference matrices (pivot_wider).