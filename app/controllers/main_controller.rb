class MainController < ApplicationController
    before_action :require_login, except: [:main_start, :main_about, :main_contact]
    
    def main_start
    end
    
    def main_addplan
          @every_plan = Plan.all
          @my_plan= Plan.where(user_id: current_user.id)
    end
    
    def main_makememo
        @plan_id = params[:id] 
        # case params["option"].to_i
        #    when 1
              
        #    when 2
              
        #    when 3
                
        #33    end
    end
    
    
    def main_addmemo
         @every_memo=Memo.all.order("id desc")
         @plan_id = params[:id]
         @memo =  Plan.where(id: params[:id])
      #  @memo = Memo.new
      #  memo.memotitle = params[:nameofmemo]
      #  memo.save
    end
    
    def main_memo
        @plan_id = params[:id] 
     #    @two_dest.memocontent = params[:contentofmemo]
     #    @memo_id = params[:id]
    
    end


    def memo_update
       @two_dest = Memo.find(params[:memo_id])
       @two_dest.memotitle = params[:nameofmemo]
       @two_dest.memocontent = params[:contentofmemo]
       @two_dest.plan_id = params[:plan_id]
       @two_dest.object = params[:object]
       @two_dest.save
       redirect_to "/main_addmemo/#{memo.plan_id}"
    end



    def plan_write

        @plans = Plan.all.order("id desc") #plnas 오타인가요??
        plan = Plan.new
        plan.title = params[:nameoftrip]
        plan.day = params[:dayoftrip]
        plan.user_id = current_user.id
        plan.save
       redirect_to "/main_addplan"
    end
    
    def destroy_plan
        @one_dest = Plan.find(params[:plan_id])
        @one_dest.destroy
        redirect_to "/main_addplan"
    end
  
    def destroy_memo
        @fth_dest = Memo.find(params[:memo_id])
        @fth_dest.destroy
        redirect_to "/main_addmemo/:plan_id"
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
       memo.object = params[:object]
       memo.save
       redirect_to "/main_addmemo/#{memo.plan_id}"
    end
   
  
    def jayoung_practice
        
    end
end
