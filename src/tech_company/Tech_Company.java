/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tech_company;

/**
 *
 * @author shabr
 */

import java.util.logging.Level;
import java.util.logging.Logger;
public class Tech_Company {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
             load pf =new load();
          Home If = new Home();
          pf.setVisible(true);
          
          for(int x=1;x<=100;++x){
               try 
                  {
              Thread.sleep(80);
              pf.abcd.setValue(x);
              
              /*if(x%2==0){
                  pf.please.setText("Please Wait...");
              }else{
                  pf.please.setText("Please Wait...");
              }*/
              
               if(x==100){
                   pf.setVisible(false);
                    If.setVisible(true);
               }
               }
              catch (InterruptedException ex) 
                 {
                     Logger.getLogger(load.class.getName()).log(Level.SEVERE,null,ex);
                 }
              }
               
              
              
              
              
          }
    }
    

