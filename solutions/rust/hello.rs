// hello.rs
#![allow(non_camel_case_types)]

use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn rustHello() {
    println!("Hello from Rust!");
}
