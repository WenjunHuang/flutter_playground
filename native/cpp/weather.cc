//
// Created by rick on 2021/8/23.
//
#include <stdlib.h>
#include <string.h>
#if (_MSC_VER >= 1900) // (Visual Studio 2015 version 14.0)
#define EXPORTED __declspec(dllexport)
#else
#define EXPORTED __attribute__((visibility("default")))
#endif
extern "C" {
EXPORTED double get_temperature() { return 100.0f; }
EXPORTED char*  get_forecast() {
    char* forecast   = "sunny";
    char* forecast_m = (char*)malloc(strlen(forecast) + 1);
    strcpy_s(forecast_m, strlen(forecast) + 1, forecast);
    return forecast_m;
}

struct ThreeDayForecast {
    double today;
    double tomorrow;
    double day_after;
};

double fahrenheit_to_celsius(double temperature) {
    return (5.0f / 9.0f) * (temperature - 32);
}

EXPORTED struct ThreeDayForecast get_three_day_forecast(bool useCelsius) {

    // 2
    struct ThreeDayForecast forecast;
    forecast.today     = 87.0f;
    forecast.tomorrow  = 88.0f;
    forecast.day_after = 89.0f;

    // 3
    if (useCelsius) {
        forecast.today     = fahrenheit_to_celsius(forecast.today);
        forecast.tomorrow  = fahrenheit_to_celsius(forecast.tomorrow);
        forecast.day_after = fahrenheit_to_celsius(forecast.day_after);
    }
    // 4
    return forecast;
}
}
