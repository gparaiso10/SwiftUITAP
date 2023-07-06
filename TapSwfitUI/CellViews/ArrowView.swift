//
//  ArrowView.swift
//  TapSwfitUI
//
//  Created by Paraíso, Gustavo Alexandre on 06/07/2023.
//

import SwiftUI

struct Arrow: Shape {

    func path(in rect: CGRect) -> Path {

        var path = Path()

        

        path.move(to: CGPoint(x: rect.minX, y: rect.midY))

        path.addLine(to: CGPoint(x: rect.maxX - 0, y: rect.midY))

        path.move(to: CGPoint(x: rect.maxX - 20, y: rect.midY - 10))

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))

        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.midY + 10))

        

        return path

    }

}
