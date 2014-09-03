#Refer to this class as PuppyBreeder::PurchaseRequest
module PuppyBreeder
  class PurchaseRequest
    attr_accessor :breed, :requester, :status

    def initialize(breed, breeder, status="pending")
      @breed = breed
      @status = status 
      @breeder = breeder

      if breeder.purchase_requests[breed] == nil 
        breeder.purchase_requests[breed] = [self] 
      else
        breeder.purchase_requests[breed].push(self)
      end
    end

    def self.pending?
      @status == "pending"
    end

    def self.completed?
      @status == "completed"
    end

    def self.accept!
      @status = "completed"
    end
    


  end
end