//
//  Sphere.swift
//  checkin
//
//  Created by Oliver Brady on 3/30/20.
//  Copyright © 2020 Oliver Brady. All rights reserved.
//

import SwiftUI
import SceneKit

struct Sphere: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<Sphere>) -> SCNView {
        let sceneView = SCNView()
        sceneView.scene = SCNScene()
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = UIColor.white

        let sphere = SCNSphere(radius: 2.0)
        sphere.firstMaterial?.diffuse.contents = UIColor.red
        let spherenode = SCNNode(geometry: sphere)
        spherenode.position = SCNVector3(x: 0.0, y: 3.0, z: 0.0)

        sceneView.scene?.rootNode.addChildNode(spherenode)
        return sceneView
    }

    func updateUIView(_ uiView: SCNView, context: UIViewRepresentableContext<Sphere>) {

    }

    typealias UIViewType = SCNView
}

struct DemoSceneKit: View {
    var body: some View {
        Sphere()
    }
}

struct DemoSceneKit_Previews: PreviewProvider {
    static var previews: some View {
        DemoSceneKit()
    }
}
