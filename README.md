# Raytracer Challenge

An implementation of the raytracer from [The Raytracer Challenge](https://pragprog.com/titles/jbtracer/the-ray-tracer-challenge/) written in Ada 2012 (and 2022 when I've built GNAT 10.3.0).

This was also an excuse to learn how to do Behaviour Driven Development using GNAT BDD.

## Building

### GNAT

```bash
git clone git@github.com:Lucretia/raytracer_challenge_ada.git
cd raytracer_challenge/build/gnat
make
```

## Dependencies

* FSF GNAT
* [GNAT BDD](https://github.com/briot/gnatbdd)
  * Note that the above needs a [modification](https://github.com/briot/gnatbdd/issues/3) to work.

## Tested with

FSF GNAT 9.3.0

## Copyright

Copyright (C) 2021 by Luke A. Guest

## Licence

New-style BSD, see [LICENCE](./LICENCE) file in source root directory and at the start of all source files.
