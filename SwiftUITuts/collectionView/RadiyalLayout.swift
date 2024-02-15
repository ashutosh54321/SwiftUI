//
//  RadiyalLayout.swift
//  SwiftUITuts
//
//  Created by Varshney on 02/11/23.
//

import SwiftUI

var numbers = [12,1,2,3,4,5,6,7,8,9,10,11]
var icons = ["calendar", "message", "figure.walk", "music.note"]
let timer1 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()


struct RadiyalLayout: View {
    @State var currentDate = Date.now
    @State var degreeRoatation:Int = 0
    @State var timeRemaining = 10

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            ZStack {
                setImageViews()
                setHoursView()
                setMiutesView()
                setStrokeLine()
                setDialView()
            }
           
        }
        .background(.red)
        Spacer()
    }
    
}

extension RadiyalLayout {
    public func setDialView() -> some View {
        VStack() {
            
        }
        .frame(width: 5, height: 60)
        .background(.white)
        .offset(y: -30)
        //.scaleEffect(anchor: .bottom)
        .rotationEffect(.degrees(Double(degreeRoatation)))
        .onReceive(timer1) { input in
            if degreeRoatation >= 360 {
                degreeRoatation = 0
            }
            degreeRoatation += 6
        }
    }
    public func setImageViews() -> some View {
        RadialLayout {
            ForEach(icons, id: \.self) { item in
                Circle()
                    .frame(width: 44)
                    .overlay(Image(systemName: item).foregroundColor(.white))
            }
        }
        .frame(width: 120)
    }
    public func setHoursView() -> some View {
        RadialLayout {
            ForEach(numbers, id: \.self) { item in
                Text("\(item)")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.black)
            }
        }
        .frame(width: 240)
    }
    
    public func setMiutesView() -> some View {
        RadialLayout {
            ForEach(numbers, id: \.self) { item in
                Text("\(item * 5)")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.black)
            }
        }
        .frame(width: 360)
    }
    
    public func setStrokeLine() -> some View  {
        Circle()
            .strokeBorder(.black, style: StrokeStyle(lineWidth: 10, dash: [1, 10]))
            .frame(width: 220)
    }
}


struct RadiyalLayout_Previews: PreviewProvider {
    static var previews: some View {
        RadiyalLayout()
    }
}

struct RadialLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        // Place subviews
        let radius = bounds.width / 3.0
        let angle = Angle.degrees(360.0 / Double(subviews.count)).radians
        for (index, subview) in subviews.enumerated() {
            // Position
            var point = CGPoint(x: 0, y: -radius)
                .applying(CGAffineTransform(rotationAngle: CGFloat(angle) * CGFloat(index)))

            // Center
            point.x += bounds.midX
            point.y += bounds.midY

            // Place subviews
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}



