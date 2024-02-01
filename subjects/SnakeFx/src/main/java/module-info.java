module snek {
    requires javafx.controls;
    requires javafx.fxml;

    opens snek to javafx.fxml;
    exports snek;
}
