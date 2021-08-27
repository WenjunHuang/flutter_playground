extern crate libc;

use libc::c_char;
use std::ffi::CString;

#[cfg(test)]
mod tests {
    use crate::get_temperature;

    #[test]
    fn it_works() {
        assert_eq!(get_temperature_rust(), 86.0_f32);
    }
}

#[no_mangle]
pub extern "C" fn get_temperature_rust() -> f64 {
    86.0_f64
}

#[no_mangle]
pub extern "C" fn get_forecast_rust() -> *mut c_char {
    let mut forecast = String::from("sunny");
    CString::new(forecast).unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn free_forecast_rust(s: *mut c_char) {
    unsafe {
        if s.is_null() {
            return;
        }
        CString::from_raw(s);
    }
}
