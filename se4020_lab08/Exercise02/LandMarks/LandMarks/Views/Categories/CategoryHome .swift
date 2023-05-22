//
//  CategoryHome .swift
//  LandMarks
//
//  Created by Sajani Jayasinghe on 2023-05-10.
//

import SwiftUI

struct CategoryHome_: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome__Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome_()
            .environmentObject(ModelData())
    }
}
