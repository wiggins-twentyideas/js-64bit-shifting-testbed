Was curious about performance of different ways of getting 64bit integer shifting in javascript in 2023.

* calling out to wasm N times to do N bitshifts has lots of overhead, doing this for 32 bit shifts is around 10x slower than using >>>. (no surprise there)

* calling out to wasm N times to use i64_shr_u is about 5x faster than using BigInt shifting.
If the workload can be devised to do N shifts and with only 1 call out to wasm this would improve greatly.


typical results from my random laptop:
```
i32_shr_u(0xbeef0000,16) = 6.899999991059303ms

0xbeef0000 >>> 16 = 0.7999999970197678ms

i64_shr_u(0xbeef000000000000,32) = 5.800000011920929ms

0xbeef000000000000n >> 32n = 32ms
```


## rebuilding

`brew install wabt`
`make`

## running the testbed

`python3 -m http.server`

then visit `http://localhost:8000/testing.html`