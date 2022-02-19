//
//  Home.swift
//  CircularSlider
//
//  Created by Danil Peregorodiev on 19.02.2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    let date = Date().dayOfWeek()!
                    Text("\(date)")
                        .font(.title.bold())
                    Text("Доброе утро, Шлёпа")
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    
                } label: {
                    Image("floppa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                    
                }
            }
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
    }
}
