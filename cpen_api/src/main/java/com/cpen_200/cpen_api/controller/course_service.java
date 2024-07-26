package com.cpen_200.cpen_api.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cpen_200.cpen_api.db_connector.db_layer;
import com.cpen_200.cpen_api.models.cls_service;

@RestController
@RequestMapping("/course_service")
public class course_service {
   
    cls_service course_l = new cls_service();

    @Autowired
    private db_layer cls_db_config;

    @GetMapping("/select_all_fees")
   public String select_all_fees (){
    
    course_l.con= cls_db_config.getCon();
   String result = course_l.select_all_fees();

    return result;

   }
		
	

}