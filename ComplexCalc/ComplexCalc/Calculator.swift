//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs;
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        let response = op(lhs, rhs);
        return response;
    }
    
    func add(_ array: [Int]) -> Int {
        var total = 0;
        for element in array {
            total += element;
        }
        return total;
    }
    
    func multiply(_ array: [Int]) -> Int {
        if (array.count == 0) {
            return 0;
        }
        var total = 1;
        for element in array {
            total *= element;
        }
        return total;
    }
    
    func count(_ array: [Int]) -> Int {
        return array.count;
    }
    
    func avg(_ array: [Int]) -> Int {
        let total = add(array);
        let denom = count(array)
        return total/denom;
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        let response = args.reduce(beg, op);
        return response;
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let xTotal = lhs.0 + rhs.0;
        let yTotal = lhs.1 + rhs.1;
        return (xTotal, yTotal);
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let xTotal = lhs.0 - rhs.0;
        let yTotal = lhs.1 - rhs.1;
        return (xTotal, yTotal);
    }
    
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        let xTotal = lhs["x"]! + rhs["x"]!;
        let yTotal = lhs["y"]! + rhs["y"]!;
        return ["x" : xTotal, "y" : yTotal];
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        let xTotal = lhs["x"]! - rhs["x"]!;
        let yTotal = lhs["y"]! - rhs["y"]!;
        return ["x" : xTotal, "y" : yTotal];
    }
}
