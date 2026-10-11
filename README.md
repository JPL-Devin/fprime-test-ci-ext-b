# fprime-test-ci-ext-b

Scratch repository simulating an external F´ project (e.g. a tutorial or platform
reference repo) for the dispatched external-CI prototype.

`.github/workflows/ci.yml` is dispatchable from the simulated `nasa/fprime`
(`JPL-Devin/fprime-test-ci-fprime`) with an explicit F´ repository + commit SHA.
The "build" passes iff that F´ revision lists `ext-b` in `compat.txt`.
