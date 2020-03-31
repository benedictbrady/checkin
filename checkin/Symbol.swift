//
//  Symbol.swift
//  checkin
//
//  Created by Oliver Brady on 3/30/20.
//  Copyright © 2020 Oliver Brady. All rights reserved.
//

import SwiftUI

struct Symbol: View {
    var body: some View {
        GeometryReader { geometry in
            
                        
            Ellipse()
                .fill(Color.gray)
                .overlay(Ellipse()
                    .stroke(lineWidth: 5))
                .frame(width: 300, height: 150)
                .offset(x: geometry.size.width / 2 - 150, y: geometry.size.height / 2 + (geometry.size.height / 3)*1.2 - 75)
            
            Ellipse()
                .fill(Color.gray)
                .overlay(Ellipse()
                    .stroke(lineWidth: 5))
                .frame(width: 200, height: 100)
                .offset(x: geometry.size.width / 2 - 100, y: geometry.size.height / 2 + (geometry.size.height / 3)*1.2 - 50)

                        
            Ellipse()
                .fill(Color.gray)
                .overlay(Ellipse()
                    .stroke(lineWidth: 5))
                .frame(width: 100, height: 50)
                .offset(x: geometry.size.width / 2 - 50, y: geometry.size.height / 2 + (geometry.size.height / 3)*1.2 - 25);
            Circle()
                .fill(Color.black)
                .frame(width: geometry.size.width*0.3, height: geometry.size.height*0.3)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 6)
            
            
            Path { path in
                let width = geometry.size.width / 40
                let height = geometry.size.height / 3
                let middleW = geometry.size.width / 2
                let middleH = geometry.size.height / 2;                path.addLines([
                    CGPoint(x: middleW - width  , y: middleH + height),
                    CGPoint(x: middleW , y: middleH + height*1.2),
                    CGPoint(x: middleW + width  , y: middleH + height),
                    CGPoint(x: middleW + width  , y: middleH - height),
                    CGPoint(x: middleW - width  , y: middleH - height)
                ])
            }
            .fill(Color.black)
            
            
        }
    }
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        Symbol()
    }
}
