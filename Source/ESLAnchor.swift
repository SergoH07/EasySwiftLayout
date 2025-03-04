//
//  ESLAnchor.swift
//  https://github.com/denandreychuk/EasySwiftLayout
//
//  This code is distributed under the terms and conditions of the MIT license.
//  Copyright (c) 2019 Denis Andreychuk
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

public struct ESLAnchor {
    
    //MARK: - Variables
    
    public let edge: ESLEdge
    public let view: UIView
    
    //MARK: - Life Cycle
    
    public init(_ edge: ESLEdge, ofView view: UIView) {
        self.edge = edge
        self.view = view
    }
    
    //MARK: - Methods
    
    func convertToNSLayoutXAnchor() -> NSLayoutXAxisAnchor {
        switch edge {
        case .left:
            return view.leftAnchor
        case .right:
            return view.rightAnchor
        default:
            fatalError("[EasySwiftLayout] You cannot convert horizontal axis to NSLayoutXAxisAnchor")
        }
    }
    
    func convertToNSLayoutYAnchor() -> NSLayoutYAxisAnchor {
        switch edge {
        case .top:
            return view.topAnchor
        case .bottom:
            return view.bottomAnchor
        default:
            fatalError("[EasySwiftLayout] You cannot convert horizontal axis to NSLayoutYAxisAnchor")
        }
    }
}
