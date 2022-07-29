use @OpenSSL_version[Pointer[U8]](xtype: I32)
use @OpenSSL_version_num[U64]()


primitive OpenSSL
  fun version_num(): U64 =>
    @OpenSSL_version_num()

  /* returns pointers to constant strings */
  fun version():     String iso^ => _version(0)
  fun cflags():      String iso^ => _version(1)
  fun built_on():    String iso^ => _version(2)
  fun platform():    String iso^ => _version(3)
  fun dir():         String iso^ => _version(4)
  fun engines_dir(): String iso^ => _version(5)

  fun _version(xtype: I32): String iso^ =>
    var pcstring: Pointer[U8] = @OpenSSL_version(xtype)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
