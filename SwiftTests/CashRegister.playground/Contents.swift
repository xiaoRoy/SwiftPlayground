import XCTest


class CashRegister {
    
    let availableFunds: Decimal
    
    var transactionTotal: Decimal = 0
    
    init(availableFunds: Decimal) {
        self.availableFunds = availableFunds
    }
    
    func addItem(_ itemCost: Decimal) {
        transactionTotal =  itemCost
    }
    
}

class CashRegisterTests: XCTestCase {
    
//    func testInit_createCashRegister() {
//        XCTAssertNotNil(CashRegister())
//    }
    
    var availableFunds: Decimal!
    
    var cashRegister: CashRegister!
    
    
    
    override func setUp() {
        super.setUp()
        availableFunds = Decimal(100)
        cashRegister = CashRegister(availableFunds: availableFunds)
        
    }
    
    func testInitAvailableFunds_setAvailableFunds() {
        //Given available fund is 100
        
//        let availableFunds = Decimal(100)
        
        //When Create a cash register with this available fund
        
//        let cashRegister = CashRegister(availableFunds: availableFunds)
        
        
        //Then I should have a cash register with 100 availble fund
        
        XCTAssertEqual(availableFunds, cashRegister.availableFunds)
        
    }
    
    func testAddItem_oneItem_addsCostToTransactionTotal() {
        //Given I have transaction item that costs 42
        
//        let availableFunds = Decimal(100)
//        let cashRegister = CashRegister(availableFunds: availableFunds)
        let itemCost = Decimal(42)
        
        //When I add this item to the cash register
        
        cashRegister.addItem(itemCost)
        
        
        //Then I should transaction toal count is 42 in cash register
        XCTAssertEqual(itemCost, cashRegister.transactionTotal)
    }
    
    func testAddItem_twoItems_addsCostToTransactionTotal() {
        //Given I have 2 transaction items, one is 42 and anohter is 20.
        

        let itemCost = Decimal(42)
        let itemCostSecond = Decimal(20)
        
        //When I add these 2 items to the cash register
        
        cashRegister.addItem(itemCost)
        cashRegister.addItem(itemCostSecond)
        
        
        //Then I should transaction toal count is 62 in cash register
        XCTAssertEqual(itemCost, cashRegister.transactionTotal)
    }
    
    override func tearDown() {
        availableFunds = nil
        cashRegister = nil
        super.tearDown()
    }
}

CashRegisterTests.defaultTestSuite.run()
