#include <stdio.h>
#include <stdint.h>
#include <errno.h>
#include <string.h>
#include <stdbool.h>
#include "olive.c"

#define WIDTH 800
#define HEIGHT 600

#define COLS 8
#define ROWS 6
#define CELL_WIDTH  (WIDTH/COLS)
#define CELL_HEIGHT (HEIGHT/ROWS)

#define BACKGROUND_COLOR 0xFF202020
#define RED_COLOR        0xFF0000FF
#define GREEN_COLOR      0xFF20FF20
#define BLUE_COLOR       0xFFFF2020

static uint32_t pixels[WIDTH*HEIGHT];

bool checker_example(void)
{
    olivec_fill(pixels, WIDTH, HEIGHT, BACKGROUND_COLOR);

    for (int y = 0; y < ROWS; ++y) 
    {
        for (int x = 0; x < COLS; ++x) 
        {
            uint32_t color = BACKGROUND_COLOR;
            if ((x+y)%2 == 0)
            {
                color = RED_COLOR;
            }
            olivec_fill_rect(pixels, WIDTH, HEIGHT, x*CELL_WIDTH, y*CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT, color);
        }
    }
    const char *file_path = "./images/checker.ppm";
    Errno err = olivec_save_to_ppm_file(pixels, WIDTH, HEIGHT, file_path);
    if (err) {
        fprintf(stderr, "ERROR: could not save file %s: %s\n", file_path, strerror(errno));
        return(false);
    }
    return true;
}

float lerpf(float a, float b, float t)
{
    return(a + (b-a)*t);
}

bool circle_example(void)
{
    olivec_fill(pixels, WIDTH, HEIGHT, BACKGROUND_COLOR);

    size_t radius = (CELL_WIDTH < CELL_HEIGHT) ? CELL_WIDTH/2 : CELL_HEIGHT/2;

    for (int y = 0; y < ROWS; ++y) 
    {
        for (int x = 0; x < COLS; ++x) 
        {
            float u = (float)x/COLS;
            float v = (float)y/ROWS;
            float t = (u + v)/2;

            olivec_fill_circle(pixels, WIDTH, HEIGHT, 
                                x*CELL_WIDTH + CELL_WIDTH/2, 
                                y*CELL_HEIGHT + CELL_HEIGHT/2, 
                                (size_t) lerpf(radius/4, radius, t),
                                RED_COLOR);
        }
    }

    const char *file_path = "./images/circle.ppm";
    Errno err = olivec_save_to_ppm_file(pixels, WIDTH, HEIGHT, file_path);
    if (err) {
        fprintf(stderr, "ERROR: could not save file %s: %s\n", file_path, strerror(errno));
        return(false);
    }
    return true;
}

bool lines_example(void)
{
    olivec_fill(pixels, WIDTH, HEIGHT, BACKGROUND_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, 0, 0, 
                    WIDTH, HEIGHT, RED_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, WIDTH, 0, 
                    0, HEIGHT, RED_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, 0, 0, 
                    WIDTH/4, HEIGHT, GREEN_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, WIDTH/4, 0, 
                    0, HEIGHT, GREEN_COLOR);                    
    olivec_draw_line(pixels, WIDTH, HEIGHT, WIDTH, 0, 
                    WIDTH/4*3, HEIGHT, GREEN_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, WIDTH/4*3, 0, 
                    WIDTH, HEIGHT, GREEN_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, 0, HEIGHT/2, 
                    WIDTH, HEIGHT/2, BLUE_COLOR);
    olivec_draw_line(pixels, WIDTH, HEIGHT, WIDTH/2, 0, 
                    WIDTH/2, HEIGHT, BLUE_COLOR);

    const char *file_path = "./images/lines.ppm";
    Errno err = olivec_save_to_ppm_file(pixels, WIDTH, HEIGHT, file_path);
    if (err) {
        fprintf(stderr, "ERROR: could not save file %s: %s\n", file_path, strerror(errno));
        return(false);
    }
    return true;
}

bool triangle_example(void)
{
    olivec_fill(pixels, WIDTH, HEIGHT, BACKGROUND_COLOR);

    int x1 = WIDTH/2, y1 = HEIGHT/8;
    int x2 = WIDTH/8, y2 = HEIGHT/2;
    int x3 = WIDTH*7/8, y3 = HEIGHT*7/8;
    olivec_fill_triangle(pixels, WIDTH, HEIGHT, 
                            x1, y1, x2, y2, x3, y3, RED_COLOR);

    x1 = WIDTH/2, y1 = HEIGHT*2/8;
    x2 = WIDTH*2/8, y2 = HEIGHT/2;
    x3 = WIDTH*6/8, y3 = HEIGHT/2;
    olivec_fill_triangle(pixels, WIDTH, HEIGHT, 
                            x1, y1, x2, y2, x3, y3, GREEN_COLOR);

    x1 = WIDTH/8, y1 = HEIGHT/8;
    x2 = WIDTH/8, y2 = HEIGHT*3/8;
    x3 = WIDTH*3/8, y3 = HEIGHT*3/8;
    olivec_fill_triangle(pixels, WIDTH, HEIGHT, 
                            x1, y1, x2, y2, x3, y3, BLUE_COLOR);

    const char *file_path = "./images/triangle.ppm";
    Errno err = olivec_save_to_ppm_file(pixels, WIDTH, HEIGHT, file_path);
    if (err) {
        fprintf(stderr, "ERROR: could not save file %s: %s\n", file_path, strerror(errno));
        return(false);
    }
    return true;
}

int main(void) 
{
    if (!checker_example()) return -1;
    if (!circle_example()) return -1;
    if (!lines_example()) return -1;
    if (!triangle_example()) return -1;
    return 0;
}
