//
//  BackgroundPicker.swift
//  Gist_Binding
//
//  Created by Stefan Balica on 24/04/2024.
//

import SwiftUI

struct BackgroundPicker: View {
    
    @Binding var selectedColor: Color
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack {
            Text("Select background color")
            
            HStack {
                Button  {
                    selectedColor = .red
                    dismiss()
                } label: {
                    Color(.red)
                        .frame(width: 50, height: 50)
                }
                Button  {
                    selectedColor = .yellow
                    dismiss()
                } label: {
                    Color(.yellow)
                        .frame(width: 50, height: 50)
                }
                Button  {
                    selectedColor = .blue
                    dismiss()
                } label: {
                    Color(.blue)
                        .frame(width: 50, height: 50)
                }
            }
             
        }
         
    }
}

#Preview {
    BackgroundPicker(selectedColor: .constant(.blue))
}
