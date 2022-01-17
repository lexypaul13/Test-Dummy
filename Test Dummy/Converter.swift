//
//  Converter.swift
//  Test Dummy
//
//  Created by Alex Paul on 1/15/22.
//

import Foundation
struct Converter{
    func convertToCelsius(fahrenheit:Double)->Double{
        let fahrenheit = Measurement(value: fahrenheit, unit:
      UnitTemperature.fahrenheit)
         let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
