//
//some function about histogram and filter
//
#include <iostream>
#include <string>
#include <sstream>
#include <cmath>
using namespace std;

// OpenCV includes
#include "opencv2/core/utility.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
using namespace cv;

Mat img;  /* NOLINT */

// show BGR Histogram
void showHistogram(const Mat& imag);
// Histogram equalization
void equalizeHistogram(const Mat& imag);
// Lomography with LUT lable
void lomography(const Mat& imag);

int main(int argc, const char** argv ){

    String imgFile = "/home/xrf/CLionProjects/test00/materials/倪妮.jpeg";
    img = imread(imgFile);

    namedWindow("nini",WINDOW_NORMAL);
    imshow("nini", img);
    lomography(img);
    waitKey(0);



   return 0;
}

// show BGR Histogram
void showHistogram(const Mat& imag){
// Separate image in BRG
    vector<Mat> bgr;
    split( imag, bgr );

    // Create the histogram for 256 bins
    // The number of possibles values
    int numbins= 256;

    // Set the ranges ( for B,G,R) )
    float range[] = { 0, 256 } ;
    const float* histRange = { range };

    Mat b_hist, g_hist, r_hist;

    calcHist( &bgr[0], 1, 0, Mat(), b_hist, 1, &numbins, &histRange );
    calcHist( &bgr[1], 1, 0, Mat(), g_hist, 1, &numbins, &histRange );
    calcHist( &bgr[2], 1, 0, Mat(), r_hist, 1, &numbins, &histRange );

    // Draw the histogram
    // We go to draw lines for each channel
    int width= 512;
    int height= 300;
    // Create image with gray base
    Mat histImage( height, width, CV_8UC3, Scalar(20,20,20) );

    // Normalize the histograms to height of image
    normalize(b_hist, b_hist, 0, height, NORM_MINMAX );
    normalize(g_hist, g_hist, 0, height, NORM_MINMAX );
    normalize(r_hist, r_hist, 0, height, NORM_MINMAX );

    int binStep= cvRound((float)width/(float)numbins);
    for( int i=1; i< numbins; i++) {
        line(histImage,
             Point(binStep * (i - 1), height - cvRound(b_hist.at<float>(i - 1))),
             Point(binStep * (i), height - cvRound(b_hist.at<float>(i))),
             Scalar(255, 0, 0)
        );
        line(histImage,
             Point(binStep * (i - 1), height - cvRound(g_hist.at<float>(i - 1))),
             Point(binStep * (i), height - cvRound(g_hist.at<float>(i))),
             Scalar(0, 255, 0)
        );
        line(histImage,
             Point(binStep * (i - 1), height - cvRound(r_hist.at<float>(i - 1))),
             Point(binStep * (i), height - cvRound(r_hist.at<float>(i))),
             Scalar(0, 0, 255)
        );
    }

    imshow("Histogram", histImage);

}

// Histogram equalization
void equalizeHistogram(const Mat& imag){

    Mat result;
    // Convert BGR image to YCbCr
    Mat ycrcb;
    cvtColor( imag, ycrcb, COLOR_BGR2YCrCb);
    // Split image into channels
    vector<Mat> channels;
    split( ycrcb, channels );
    // Equalize the Y channel only
    equalizeHist( channels[0], channels[0] );
    // Merge the result channels
    merge( channels, ycrcb );
    // Convert color ycrcb to BGR
    cvtColor( ycrcb, result, COLOR_YCrCb2BGR );
    // Show image
    imshow("Equalized", result);
}

// Lomography with LUT lable
void lomography(const Mat& imag){

    Mat result;

    const double E = std::exp(1.0);
    // Create Lookup table for color curve effect
    Mat lut(1, 256, CV_8UC1);
    for (int i=0; i<256; i++)
    {
        float x= (float)i/256.0;
        lut.at<uchar>(i)= cvRound( 256 * (1/(1 + pow(E, -((x-0.5)/0.1)) )) );
    }

    // Split the image channels and apply curve transform only to red channel
    vector<Mat> bgr;
    split(imag, bgr);
    LUT(bgr[2], lut, bgr[2]);
    // merge result
    merge(bgr, result);
    // Create image for halo dark
    Mat halo( img.rows, img.cols, CV_32FC3, Scalar(0.3,0.3,0.3) );
    // Create circle
    circle(halo, Point(img.cols/2, img.rows/2), img.cols/3, Scalar(1,1,1), -1);
    blur(halo, halo, Size(img.cols/3, img.cols/3));
    // Convert the result to float to allow multiply by 1 factor
    Mat resultf;
    result.convertTo(resultf, CV_32FC3);
    // Multiply our result with halo
    multiply(resultf, halo, resultf);
    // convert to 8 bits
    resultf.convertTo(result, CV_8UC3);
    // show result
    imshow("Lomograpy", result);
    // Release mat memory
    halo.release();
    resultf.release();
    lut.release();
    bgr[0].release();
    bgr[1].release();
    bgr[2].release();
}