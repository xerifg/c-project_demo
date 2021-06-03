//
// Created by xrf on 2021/5/31.
//
#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

int main(int argc, char *argv[])
{
    const char* keys =
            {
                "{help | | print this message}"
                "{@video | | video file,if not defined try to use webcamera}"

            };
    CommandLineParser parser (argc, argv, keys);

    if (parser.has("help"))
    {
        parser.printMessage();
        return 0;
    }

    string videoFile = parser.get<string>("@video");    //get video file path

    if(!parser.check())
    {
        parser.printErrors();
        return 0;
    }

    VideoCapture cap;

    if(videoFile != "")
        cap.open(videoFile);
    else
    {
        cap.open(0);      //using webcamera if don't get video file
        cap.set(CAP_PROP_FRAME_WIDTH,640);
        cap.set(CAP_PROP_FRAME_HEIGHT,480);
    }

    if (!cap.isOpened())
        return -1;

    namedWindow("video",1);

    while(true)
    {
        Mat frame;
        cap >> frame;  // get a new frame from camera
        if(frame.empty())
            cout<<"frame is empty"<<endl;
        else
            imshow("video", frame);
        if(waitKey(30) >=0) break;

    }

    cap.release();

    return 0;
}
