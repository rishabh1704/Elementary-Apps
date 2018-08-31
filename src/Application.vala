public class MyApp : Gtk.Application {

    public MyApp (){
        Object (
            application_id : "com.github.rishabh1704.elementary_desktop",
            flags : ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var label = new Gtk.Label ("Hello again world");
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 600;
        main_window.default_width = 600;
        main_window.title = "Hello World";
        main_window.add(label);
        main_window.show_all();
    }

    public static int main(string[] args) {
        var app = new MyApp ();
        return app.run(args);
    }
}