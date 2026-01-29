//
//  ContentView.swift
//  TwoWayBinding
//
//  Created by Nia Mitchell on 1/28/26.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .purple
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    
    
    var body: some View {
        VStack {
            Text("Press Count: \(pressCount) ")
            
            Button ("press me"){
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle( "Toggle is \(toggleIsOn ? "on" : "off")", isOn: $toggleIsOn)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            
            ColorPicker("pick a color:", selection: $selectedColor)
            
            Spacer()
            
            DatePicker( "Date", selection: $selectedDate)
            Text ("Selected Date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper( "Stepper Value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            
            Spacer()
            
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
