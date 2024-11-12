# Extended Random Walker

This project is an extended version of a random walker program created with Processing. The walker moves across the screen with a randomly varying frame rate, changing direction and color every time it touches the edges of the window.

## Program Overview

The program uses a simple circular "walker" that moves randomly across the canvas. The color of the walker changes each time it hits the edge of the window, adding a dynamic visual effect. The frame rate varies randomly between 50 and 1000 frames per second, causing the walker to move at different speeds.

### Key Features

- **Random Motion**: The walker moves in random directions at each frame.
- **Edge Detection**: When the walker hits the edge of the canvas, it bounces back and changes color.
- **Varying Frame Rate**: The frame rate changes randomly up to 1000 FPS, creating varying speeds.
- **Random Colors**: The walker's color is randomized each time it touches the edge of the canvas.

## Code Structure

### Global Variables

- `pos_x`, `pos_y` (int): The current position of the walker.
- `vel_x`, `vel_y` (float): The current velocity of the walker, randomly assigned each frame.
- `radius` (int): Radius of the walker for collision detection.
- `currentColor` (color): The current color of the walker, which changes on edge contact.

### Functions

- **setup()**: 
  - Sets the canvas size and background color.
  - Initializes the walker's color, position, and random velocity.
  - Sets a random frame rate between 50 and 1000 FPS.

- **draw()**:
  - Draws the walker on the canvas using the `currentColor`.
  - Updates the walker's position and assigns a new random velocity.
  - Checks for edge collisions and changes the walker's direction and color if it touches the edges.

## Code Example

Here is a sample snippet showing how the color changes when the walker hits the edge:

```java
if (pos_x > width - radius/4 || pos_x < radius/4) {
    vel_x = -vel_x;
    currentColor = color(random(255), random(255), random(255));
}

if (pos_y > height - radius/4 || pos_y < radius/4) {
    vel_y = -vel_y;
    currentColor = color(random(255), random(255), random(255));
}
