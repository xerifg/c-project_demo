//
// Created by xrf on 2021/6/3.
//
#include <iostream>
#include <string>
#include <sstream>

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

using namespace std;
using namespace cv;

int blurAmount = 15;  // he position value in track
int max_blurAmount = 30; // the max position value in track

// Trackbar callback function
static void onchange();

int main(int argc, const char** argv)
{
    namedWindow("nini", WINDOW_AUTOSIZE);
    Mat nini_f = imread("/home/xrf/CLionProjects/test00/materials/倪妮.jpeg");
    //imshow("nini", nini_f);
    //waitKey(0);
    //destroyWindow("nini");

    // save picture files
    string store_path = "/home/xrf/CLionProjects/test00/output/"; // path
    ostringstream ss;
    ss << store_path << "nini"<< 0 << ".jpg";
    imwrite(ss.str(),nini_f);



    return 0;
}