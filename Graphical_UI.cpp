//
// Created by xrf on 2021/6/3.
//
#include <iostream>
#include <string>
#include <sstream>

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

using namespace std;
using namespace cv;

int blurAmount = 15;  // he position value in track
int max_blurAmount = 30; // the max position value in track

// Trackbar callback function
static void onChange(int pos, void* userInput);

// Mouse callback function
static void onMouse(int event, int x, int y, int, void* userInput);

int main(int argc, const char** argv)
{
//    namedWindow("nini", WINDOW_AUTOSIZE);
//    Mat nini_f = imread("/home/xrf/CLionProjects/test00/materials/倪妮.jpeg");
//    imshow("nini", nini_f);
//    waitKey(0);
//    destroyWindow("nini");

    // save picture files
//    string store_path = "/home/xrf/CLionProjects/test00/output/"; // path
//    ostringstream ss;
//    ss << store_path << "nini"<< 0 << ".jpg";
//    imwrite(ss.str(),nini_f);

    // add trackbar and Mouse event
    Mat nini_f = imread("/home/xrf/CLionProjects/test00/materials/倪妮.jpeg");
    namedWindow("nini", WINDOW_AUTOSIZE);

    createTrackbar("blurValue", "nini", &blurAmount, max_blurAmount, onChange, &nini_f);
    setMouseCallback("nini", onMouse, &nini_f);

    onChange(blurAmount, &nini_f);
    waitKey(0);



    return 0;
}

// Trackbar callback function
static void onChange(int pos, void* userInput){

    if(pos <=0) return;
    Mat imgBlur;
    Mat* img = (Mat*)userInput;
    blur(*img, imgBlur, Size(pos,pos));
    imshow("nini", imgBlur);
}

// Mouse callback function
static void onMouse(int event, int x, int y, int, void* userInput){

    if(event != EVENT_LBUTTONDOWN) return;

    Mat* img = (Mat*)userInput;
    circle(*img, Point(x, y), 10, Scalar(0,255,0), 3);

    onChange(blurAmount, img);
}