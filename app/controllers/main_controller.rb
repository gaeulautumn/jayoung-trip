class MainController < ApplicationController
    def main_start
    end
    
    def main_addplan
        
          @every_plan = Plan.all  
    end
    
    def main_addmemo
      
         @every_memo=Memo.all
         @every_memo.each do|p|
            if p.plan_id==@this_ip
                 this_memo_ip=Memo.find_by(plan_id:@this_ip)
                 @this_memo=Memo.find(this_memo_ip.id) 
            else
                @this_memo==nil
            end
        
        end
    
    
    end
    
        def plan_write

        @plnas = Plan.all
        plan = Plan.new
        plan.title = params[:nameOfTrip]
        plan.day = params[:dayOfTrip]
        plan.save
       redirect_to "/main_addplan" 
    end
    
    def destroy
        @one_dest = Plan.find(params[:plan_id])
        @one_dest.destroy
        redirect_to "/main_start"
    end
    
    
    
     def chit
        @one_post = Plan.find(params[:plan_id])
        @one_
        redirect_to "/fifth_list"
     end
    
    
    def memo_write
       @memos = Memo.all
       memo = Memo.new
       memo.memotitle = params[:nameOfMemo]
       memo.memocontent = params[:contentOfMemo]
       memo.plan_id = params[:idOfPlan]
       memo.save
       redirect_to "/"
    end
    
end
