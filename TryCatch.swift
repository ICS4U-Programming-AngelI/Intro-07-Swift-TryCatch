import Foundation

// Define a custom error for invalid input
enum InputError: Error {
    case invalidNumber
    case negativeRadius
}

// Welcome the user
print("Welcome to Angel's Volume of Sphere program!")
print("Enter the radius of the sphere (cm):")

do {
    // Read user input
    guard let input = readLine(), let radius = Float(input) else {
        throw InputError.invalidNumber
    }

    if radius < 0 {
        throw InputError.negativeRadius
    }

    // Calculate the volume
    let volume = (4.0 / 3.0) * Float.pi * pow(radius, 3)

    // Display the result rounded to 3 decimal places
    let formattedRadius = String(format: "%.3f", radius)
    let formattedVolume = String(format: "%.3f", volume)
    print("The volume of a sphere with radius \(formattedRadius)cm is \(formattedVolume) cm^3.")

} catch InputError.invalidNumber {
    print("Invalid input. Please enter a numeric value.")
} catch InputError.negativeRadius {
    print("The radius cannot be negative.")
} catch {
    print("An unexpected error occurred: \(error.localizedDescription)")
}