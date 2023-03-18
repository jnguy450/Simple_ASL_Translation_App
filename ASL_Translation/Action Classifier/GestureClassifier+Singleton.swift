/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Creates a common instance of the Gesture Classifier.
 The app only uses one instance anyway and using a static property initializes
 the model at launch instead of when the the main view loads.
*/

import CoreML

extension GestureClassifier {
    /// Creates a shared Gesture Classifier instance for the app at launch.
    static let shared: GestureClassifier = {
        // Use a default model configuration.
        let defaultConfig = MLModelConfiguration()

        // Create an Gesture Classifier instance.
        guard let gestureClassifier = try? GestureClassifier(configuration: defaultConfig) else {
            // The app requires the action classifier to function.
            fatalError("Gesture Classifier failed to initialize.")
        }

        // Ensure the Gesture Classifier.Label cases match the model's classes.
        gestureClassifier.checkLabels()

        return gestureClassifier
    }()
}
