func adding(one: Int,two: Int) {
    print(one+two)
}

adding(one: 1, two: 2)

func getAverage (_ nums: Double...) {
    var result: Double = 0
    for num in nums {
        result += num
    }
    print( result / Double(nums.count))
}

getAverage(3,5,4,3,2,6,7)
