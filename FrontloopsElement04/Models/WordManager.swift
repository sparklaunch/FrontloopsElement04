//
//  WordManager.swift
//  FrontloopsElement04
//
//  Created by Jinwook Kim on 2021/05/02.
//

import Foundation

struct WordManager {
    var currentWordIndex: Int?
    var currentStringIndex: Int?
    let words: [String] = [
        "design",
        "frontend",
        "backend",
        "testing"
    ]
    mutating func resetWordIndex() {
        self.currentWordIndex = 0
        self.currentStringIndex = 0
    }
    mutating func getNextKeyframe() -> String {
        if self.currentWordIndex! < self.words.count {
            if self.currentStringIndex! <= self.words[self.currentWordIndex!].count {
                let word: String = self.words[self.currentWordIndex!]
                let splicedWord: String = word.substring(to: self.currentStringIndex!)
                self.currentStringIndex! += 1
                return splicedWord
            }
            else {
                self.currentStringIndex! = 0
                self.currentWordIndex! += 1
                return ""
            }
        }
        else {
            self.resetWordIndex()
            return ""
        }
    }
}

// MARK: - String Extension

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return String(self[fromIndex...])
    }
    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return String(self[..<toIndex])
    }
    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return String(self[startIndex..<endIndex])
    }
}
