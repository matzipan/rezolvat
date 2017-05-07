/*
 * Copyright 2017 Andrei-Costin Zisu
 *
 * This software is licensed under the GNU Lesser General Public License
 * (version 2.1 or later).  See the COPYING file in this distribution.
 */

 public static int main (string[] args) {
    Gtk.init (ref args);
    
    /* Initiliaze gettext support */
    Intl.setlocale (LocaleCategory.ALL, Intl.get_language_names ()[0]);
    //Intl.textdomain (Config.GETTEXT_PACKAGE);

    /*Environment.set_application_name (Constants.APP_NAME);*/
    /*Environment.set_prgname (Constants.PROJECT_FQDN);*/

    var application = new Rezolvat.Application ();

    return application.run (args);
}