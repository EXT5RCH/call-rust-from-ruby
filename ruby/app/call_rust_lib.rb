# frozen_string_literal: true

require 'ffi'

module CallRustLib
  extend FFI::Library
  ffi_lib 'lib/libffi_rust.so'
  attach_function :hello_world, [], :void
end

CallRustLib.hello_world