class BulletinBoardsController < ApplicationController

    def index
        #賞味期限が１週間以内に迫ってるやーつと買ってから1習慣経ってるやーつ
        @fridge1 = Refrigerator.where.not(deadline: nil).where("deadline < ?", 1.weeks.since)
        @fridge2 = Refrigerator.where(deadline: nil).where("purchase < ?", 1.weeks.ago)
    end
    
    def show
        
    end
    
end
