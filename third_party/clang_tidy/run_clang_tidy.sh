set -ue

# Usage: run_clang_tidy <OUTPUT> [ARGS...]

OUTPUT=$1
shift

# clang-tidy doesn't create a patchfile if there are no errors.
# make sure the output exists, and empty if there are no errors,
# so the build system will not be confused.
touch $OUTPUT
truncate -s 0 $OUTPUT

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P)" 
TIDY_DIR="${SCRIPT_DIR#*tidy_crash_demo/}"
$TIDY_DIR/clang_tidy.runfiles/clang_tidy_raw/clang-tidy-15 "$@"
