
actor Main
  new create(env: Env) =>
    env.out.print("Version:     " + OpenSSL.version())
    env.out.print("CFlags:      " + OpenSSL.cflags())
    env.out.print("Built_on:    " + OpenSSL.built_on())
    env.out.print("Platform:    " + OpenSSL.platform())
    env.out.print("Dir:         " + OpenSSL.dir())
    env.out.print("Engines_Dir: " + OpenSSL.engines_dir())
