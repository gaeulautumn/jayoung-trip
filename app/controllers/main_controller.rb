class MainController < ApplicationController
    def main_start
    end
    
    def main_addplan
          @every_plan = Plan.all  
    end
    
    def main_makememo
        @plan_id = params[:id] 
    end
    
    
    def main_addmemo
         @every_memo=Memo.all.order("id desc")
         @plan_id = params[:id]
         @memo =  Plan.where(id: params[:id])
      #   @memo = Memo.new
      #  memo.memotitle = params[:nameofmemo]
      #   memo.save
    end
    
    def plan_write

        @plans = Plan.all.order("id desc") #plnas 오타인가요??
        plan = Plan.new
        plan.title = params[:nameoftrip]
        plan.day = params[:dayoftrip]
        plan.save
       redirect_to "/main_addplan"
    end
    
    def destroy_plan
        @one_dest = Plan.find(params[:plan_id])
        @one_dest.destroy
        redirect_to "/main_addplan"
    end
  
    def destroy_memo
        @two_dest = Memo.find(params[:memo_id])
        @two_dest.destroy
        redirect_to "/main_addmemo"
    end
    
  
        
    
    
    
     def chit
        @one_post = Plan.find(params[:plan_id])
        @one_
        redirect_to "/fifth_list"
     end  
    
    
    def memo_write
       memo = Memo.new
       memo.memotitle = params[:nameofmemo]
       memo.memocontent = params[:contentofmemo]
       memo.plan_id = params[:plan_id]
       memo.save
       redirect_to "/main_addmemo/#{memo.plan_id}"
    end
   
  
    
end
