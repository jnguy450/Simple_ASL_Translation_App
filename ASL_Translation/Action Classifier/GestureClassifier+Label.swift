/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Defines the app's knowledge of the model's class labels.
*/

extension GestureClassifier {
    /// Represents the app's knowledge of the Gesture Classifier model's labels.
    enum Label: String, CaseIterable {
        case a = "a"
        case b = "b"
        case c = "c"
        case d = "d"
        case e = "e"
        case f = "f"
        case g = "g"
        case h = "h"
        case i = "i"
        case j = "j"
        case k = "k"
        case l = "l"
        case m = "m"
        case n = "n"
        case o = "o"
        case p = "p"
        case q = "q"
        case r = "r"
        case s = "s"
        case t = "t"
        case u = "u"
        case v = "v"
        case w = "w"
        case x = "x"
        case y = "y"
        case z = "z"

        /// A negative class that represents irrelevant actions.
        case no = "no"

        /// Creates a label from a string.
        /// - Parameter label: The name of an action class.
        init(_ string: String) {
            guard let label = Label(rawValue: string) else {
                let typeName = String(reflecting: Label.self)
                fatalError("Add the `\(string)` label to the `\(typeName)` type.")
            }

            self = label
        }
    }
}
