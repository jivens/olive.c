#include "olive.c"

#define WIDTH 800
#define HEIGHT 600

#define BACKGROUND_COLOR 0xFF202020
#define RED_COLOR        0xFF0000FF

static uint32_t pixels[WIDTH*HEIGHT];

uint32_t *render(void) 
{

    olivec_fill(pixels, WIDTH, HEIGHT, BACKGROUND_COLOR);

    int x1 = WIDTH/2, y1 = HEIGHT/8;
    int x2 = WIDTH/8, y2 = HEIGHT/2;
    int x3 = WIDTH*7/8, y3 = HEIGHT*7/8;
    olivec_fill_triangle(pixels, WIDTH, HEIGHT, 
                            x1, y1, x2, y2, x3, y3, RED_COLOR);

    return pixels;
}