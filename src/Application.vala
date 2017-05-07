/*
 * Copyright 2017 Andrei-Costin Zisu
 *
 * This software is licensed under the GNU Lesser General Public License
 * (version 2.1 or later).  See the COPYING file in this distribution.
 */
 
 namespace Rezolvat {
     public Rezolvat.Widgets.Window window;
 }

 
 public class Rezolvat.Application : Granite.Application {
     public const string PROGRAM_NAME = N_(Constants.APP_NAME);
     public const string COMMENT = N_(Constants.PROJECT_DESCRIPTION);
     public const string ABOUT_STOCK = N_("About "+ Constants.APP_NAME);
     
     public bool running = false;
     
     public Application () {
         Object (application_id: Constants.PROJECT_FQDN);
     }
     
     public override void activate () {
         if (!running) {
             running = true;
             
             //@TODO load settings
             
             window = new Rezolvat.Widgets.Window (this);
             this.add_window (window);
         } 
         
         window.show_app ();
     }
     

}