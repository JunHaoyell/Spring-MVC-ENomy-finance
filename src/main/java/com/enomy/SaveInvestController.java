package com.enomy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class SaveInvestController {

    @GetMapping("/save_invest_plan")
    public String index() {
        return "investplan";
    }
    
    @RequestMapping(value = "/save_invest_plan", method = RequestMethod.POST)
    public String submit(@RequestParam int year,int investment_type,String month_amount, Model model) {
    	
    	System.out.println();
    	System.out.println("Client Request Year is "+year);
    	System.out.println("Client Request Investment Option is "+investment_type);
    	System.out.println("Client Request Monthy Amount  is "+month_amount);
    
    	
    	double min_predict_returns=0;
    	double max_predict_returns=0;
    	double fees=0;
    	double taxes=0;
    	
    
    		
    		if(investment_type==1) {
    			
    			 min_predict_returns=Math.round(1.2*year);
            	 max_predict_returns=Math.round(2.4*year);
            	 fees=0.25;
            	 taxes=0.0;
            	
    		}else if(investment_type==2) {
    			 min_predict_returns=Math.round(3*year);
            	 max_predict_returns=Math.round(5.5*year);
            	 fees=0.3;
            	 taxes=10;
            	
    		}else {
    			 min_predict_returns=Math.round(4*year);
            	 max_predict_returns=Math.round(23*year);
            	 fees=1.3;
            	 taxes=20;
    		}
    		
        	
       boolean invest_result=true;
       
       model.addAttribute("invest_result", invest_result);
       model.addAttribute("min_predict_returns",min_predict_returns);
       model.addAttribute("max_predict_returns",max_predict_returns);
       model.addAttribute("year",year);
       model.addAttribute("fees",fees);
       model.addAttribute("taxes",taxes);
       
        return "investplan";
    }
}
