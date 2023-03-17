//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    let calculator = BMICalculations()
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var bmi: Double = 0.0
    @State var chosen: Bool = false
    
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Image("PublicHealth")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                }
                .padding(5)
            }
            
            Section {
                TextField(
                    "Enter Height (cm)",
                    text: $height
                )
                TextField(
                    "Enter Weight (kg)",
                    text: $weight
                )
            }
            
            if chosen {
                Section {
                    Text("Your BMI is: \(bmi)")
                    Text("You are \(calculator.lookUpBmiClassification(bmi: self.bmi))")
                }
            }
            Section {
                Button("Calculate BMI", action: {
                    bmi = calculator.calculateBmi(weight: Double(self.weight) ?? 0.0, height: Double(self.height) ?? 0.0)
                    chosen = true
                })
            }

        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
