//
//  NewBookView.swift
//  iBooks
//
//  Created by Yery Castro on 12/4/24.
//

import SwiftUI

struct NewBookView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    @State private var author = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Book Title", text: $title)
                TextField("Author", text: $author)
                Button {
                    let newBook = Book(title: title, author: author)
                    context.insert(newBook)
                    dismiss()
                } label: {
                    Text("Create")
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
                .disabled(title.isEmpty || author.isEmpty)
                .navigationTitle("New Book")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Cancel")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NewBookView()
}
