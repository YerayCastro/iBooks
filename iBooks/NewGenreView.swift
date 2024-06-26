//
//  NewGenreView.swift
//  iBooks
//
//  Created by Yery Castro on 15/4/24.
//

import SwiftUI
import SwiftData

struct NewGenreView: View {
    @State private var name = ""
    @State private var color = Color.red
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("name", text: $name)
                ColorPicker("Set the genre color", selection: $color, supportsOpacity: false)
                Button {
                    let newGenre = Genre(name: name, color: color.toHexString()!)
                    context.insert(newGenre)
                    dismiss()
                } label: {
                    Text("Create")
                }
                .buttonStyle(.borderedProminent)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .disabled(name.isEmpty)
            }
            .padding()
            .navigationTitle("New Genre")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack {
        NewGenreView()
    }
}
