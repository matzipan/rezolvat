/*
 * Copyright 2017 Andrei-Costin Zisu
 *
 * This software is licensed under the GNU Lesser General Public License
 * (version 2.1 or later).  See the COPYING file in this distribution.
 */

public class Rezolvat.Widgets.Window : Gtk.ApplicationWindow {
    public signal void session_up ();

    private Rezolvat.Widgets.Headerbar headerbar;
    
    private const string CUSTOM_STYLESHEET = """
    """;

    public Window (Gtk.Application app) {
		Object (application: app);

	    build_ui ();
        connect_signals (app);
        load_settings ();
    }
    
	private void load_settings () {
        /*resize (settings.window_width, settings.window_height);*/
	}
    
    private void build_ui () {
        Granite.Widgets.Utils.set_theming_for_screen (this.get_screen (), CUSTOM_STYLESHEET, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
        
        headerbar = new Rezolvat.Widgets.Headerbar ();
        headerbar.set_title (Constants.APP_NAME);
        set_titlebar (headerbar);
        
        var listbox = new Gtk.ListBox ();
        
        var row = new Gtk.ListBoxRow ();
        var grid = new Gtk.Grid ();
        grid.add(new Gtk.CheckButton ());
        grid.add(new Gtk.Label ("Todo"));
        row.add (grid);
        
        listbox.add(row);
        
        add (listbox);
        /*move (settings.position_x, settings.position_y);*/
        show_all ();
    }

    private void connect_signals (Gtk.Application app) {
        var close_action = new SimpleAction ("close-action", null);
        close_action.activate.connect (request_close);
        add_action (close_action);
        app.set_accels_for_action ("win.close-action", {"<Ctrl>Q"});
    }
    
    protected override bool delete_event (Gdk.EventAny event) {
        int width;
        int height;
        int x;
        int y;

        get_size (out width, out height);
        get_position (out x, out y);
/*
        settings.position_x = x;
        settings.position_y = y;
        settings.window_width = width;
        settings.window_height = height;*/

        return false;
    }


    private void request_close () {
        close ();
    }

    public void show_app () {
		show ();
    	present ();

    	/*folder_conversations_list.grab_focus ();*/
	}
}
