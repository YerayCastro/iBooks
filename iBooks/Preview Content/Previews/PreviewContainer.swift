//
//  PreviewContainer.swift
//  iBooks
//
//  Created by Yery Castro on 12/4/24.
//

import Foundation
import SwiftData

struct Preview {
    let container: ModelContainer
    init(_ models: any PersistentModel.Type...) {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let schema = Schema(models)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Could not create prewiev container")
        }
    }
    
    func addExamples(_ examples: [any PersistentModel]) {
        Task {
            await MainActor.run {
                examples.forEach { example in
                    container.mainContext.insert(example)
                }
            }
        }
    }
}
