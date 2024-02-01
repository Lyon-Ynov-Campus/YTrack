package snek;

import java.io.IOException;
import javafx.animation.Animation;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.*;
import javafx.collections.ObservableList;
import javafx.stage.Stage;
import javafx.util.Duration;
import javafx.scene.*;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.GridPane;
import javafx.fxml.*;

public class App extends Application {

    private static Scene scene;

    public static void main(String[] args) {
        // required by FXML, check the documentation
        launch();
    }

    @Override
    public void start(Stage stage) throws IOException {
        // Load FXML
        FXMLLoader fxmll = new FXMLLoader(getClass().getResource("Snake.fxml"));
        // Change to appropriate type
        Parent fxmlRoot;

        try {
            fxmlRoot = fxmll.load();
        } catch (IOException exception) {
            throw new RuntimeException(exception);
        }

        // Create new window
        Scene scene = new Scene(fxmlRoot, 1280, 800);
        // Handle inputs
        scene.addEventHandler(KeyEvent.KEY_PRESSED, (key) -> {
            if(key.getCode()==KeyCode.ESCAPE) {
                stage.close();
            }
            // handle other key inputs
        });

        // This code repeats every 0.6s and is allowed to change the GUI
        Timeline timeline = new Timeline(new KeyFrame(Duration.seconds(0.6), event -> {
            // Code to be executed every tick
        }));

        timeline.setCycleCount(Animation.INDEFINITE); // Run indefinitely

        stage.setTitle("Snek");
        //Setting the scene to Stage 
        stage.setScene(scene); 

        //Displaying the stage
        stage.show();

        timeline.play();
    }
}