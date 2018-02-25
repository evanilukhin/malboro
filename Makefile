PROJECT = malboro
PROJECT_DESCRIPTION = Simple HTTP/1.1 (in the near future HTTP/2) server transforming JSON messages.
PROJECT_VERSION = 0.1.0

DEPS = cowboy  jiffy
dep_cowboy_commit = 2.2.2
dep_jiffy = hex 0.15.0

DEP_PLUGINS = cowboy

include erlang.mk
