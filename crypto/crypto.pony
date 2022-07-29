use @CRYPTO_num_locks[I32]()
use @CRYPTO_set_locking_callback[None](cb: Pointer[None])

primitive Crypto
  fun num_locks(): I32 =>
    @CRYPTO_num_locks()

  fun set_locking_callback(cb: Pointer[None]) =>
    @CRYPTO_set_locking_callback(cb)
