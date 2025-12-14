# Advent of Code 2025

#### Once again: Koka

## Installation

1. [Build](https://github.com/koka-lang/koka?tab=readme-ov-file#build-from-source) the Koka compiler at [this commit](https://github.com/koka-lang/koka/commit/a9a8405c3e6e3e88efb5cbe030520f3f7cf6a40d)
2. Clone this repository.
3. This project depends on [koka-hlib](https://github.com/heikoRibberink/koka-hlib#), my helper library. For this project to work, it needs to be available as `hlib` in the top-level directory of this repo. There are essentially two ways to do this:
   1. Clone into `hlib`: `git clone https://github.com/HeikoRibberink/koka-hlib.git hlib`
   2. Clone to somewhere else, and symlink to it from this repo: `ln -s path/to/koka-hlib hlib`

## Building

To build a specific day and part, run:

```bash
make dayX/pY
```

where `X` is the day number and `Y` is 1 or 2.

For example,
```bash
make day3/p2
```

will build `p2` inside day3.

## Running

You can always run the desired executable, if you give it the correct input.

For simplicity, you can also `make run`:
```bash
make run dir=dayX ex=dayY in=[input|test]
```

You can also rerun when anything changes, using
```bash
make watch dir=dayX ex=dayY in=[input|test]
```
