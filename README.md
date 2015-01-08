This is reference example I made of d8 tracing a few months ago.

# Personal Notes:

Ref: <https://gist.github.com/kevincennis/0cd2138c78a07412ef21>, [Creating V8 profiling timeline plots](http://www.chromium.org/developers/creating-v8-profiling-timeline-plots)

d8 is at `~/vcs_3p/v8/out/x64.debug/d8`


## Links
-   [v8/V8Profiler: How to profile V8 using the built-in profiler](https://code.google.com/p/v8/wiki/V8Profiler)
-   [Creating V8 profiling timeline plots](http://www.chromium.org/developers/creating-v8-profiling-timeline-plots)
-   [Installing V8 on a Mac](https://gist.github.com/kevincennis/0cd2138c78a07412ef21)
    -   `d8 --trace-opt-verbose file.js`
    -   `d8 --trace-opt --trace-deopt test.js`
    -   `time d8 --prof test.js`
    -   `d8 --trace-gc test.js`
    -   `d8 --allow-natives-syntax file.js`
        -   `%CollectGarbage(null);`
        -   `%HaveSameMap(new Foo(1), new Foo(2))`  (test if the hidden classes are the same)
-   [Nathanaela/v8-Natives](https://github.com/Nathanaela/v8-Natives)
    -   [v8-native-calls.js](https://github.com/Nathanaela/v8-Natives/blob/master/lib/v8-native-calls.js)
    -   `CollectGarbage`, `HaveSameMap`
    -   `hasFastProperties(obj)`,
        `hasFastSmiElements(obj)`,
        `hasFastObjectElements(obj)`,
        `hasFastDoubleElements(obj)`,
        `hasDictionaryElements(obj)`,
        `hasFastHoleyElements(obj)`, `haveSameMap(obj1, obj2)`,
        `isObserved(obj)`, `isValidSmi(obj)`, `isSmi(obj)`,
        `isInPrototypeChain(item, obj)`,
        `hasFastSmiOrObjectElements(obj)`,
        `hasSloppyArgumentsElements(obj)`
-   [IR Hydra²: mraleph/irhydra](https://github.com/mraleph/irhydra)
    -   [(Pre)release IRHydra 2.0](http://mrale.ph/blog/2014/01/28/prerelease-irhydra2.html)
    -   [Release the IRHydra!](http://mrale.ph/blog/2013/02/17/release-the-irhydra.html)
-   [June 13th, 2013: Use forensics and detective work to solve JavaScript performance mysteries - HTML5 Rocks](http://www.html5rocks.com/en/tutorials/performance/mystery/)
    -   Nice article on the use of d8/v8/node flags and
        performance debugging.
    -   `-no-sandbox --js-flags="--prof --noprof-lazy --log-timer-events"`
    -   `tools/linux-tick-processor /path/to/v8.log`
    -   `tools/plot-timer-event /path/to/v8.log`
    -   `--js-flags="--trace-deopt --trace-opt-verbose"`
-   [thlorenz/v8-perf/compiler.md](https://github.com/thlorenz/v8-perf/blob/master/compiler.md)
-   [thlorenz/v8-perf/performance-profiling.md](https://github.com/thlorenz/v8-perf/blob/master/performance-profiling.md)


### Build V8 debug

Ref: <https://gist.github.com/kevincennis/0cd2138c78a07412ef21>

    ::bash
    git clone git@github.com:v8/v8.git
    cd v8
    make builddeps && make x64.debug

    alias d8=/path/to/v8/repo/out/x64.debug/d8
    alias tick-processor=/path/to/v8/repo/tools/mac-tick-processor
