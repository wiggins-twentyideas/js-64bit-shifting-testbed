(module
  (func (export "i32_shr_u") (param $num i32) (param $by i32) (result i32)
    local.get $num
    local.get $by
    i32.shr_u
  )

  (func (export "i64_shl") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.shl
  )
  (func (export "i64_shr_u") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.shr_u
  )
  (func (export "i64_shr_s") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.shr_s
  )
  (func (export "i64_rotl") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.rotl
  )
  (func (export "i64_rotr") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.rotr
  )


  (func (export "i64_and") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.and
  )
  (func (export "i64_or") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.or
  )
  (func (export "i64_xor") (param $num i64) (param $by i64) (result i64)
    local.get $num
    local.get $by
    i64.xor
  )
)
