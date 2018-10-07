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
        var total = 0;
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
}
