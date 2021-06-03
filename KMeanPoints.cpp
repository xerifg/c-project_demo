#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

int main() {
    // generate an image for display feature points
    Mat img(500, 500, CV_8UC3, Scalar(255, 255, 255));
    RNG rng(10000);   // random number

    // set 3 kind of colors
    Scalar colorLut[3] =
            {
                    Scalar(0, 255, 0),
                    Scalar(0, 0, 255),
                    Scalar(255, 0, 0),

            };
    // Set up three point sets and randomize the number of points in each set
    int number = 3;
    int Points1 = rng.uniform(20, 200);
    int Points2 = rng.uniform(20, 200);
    int Points3 = rng.uniform(20, 200);
    int Points_num = Points1 + Points2 + Points3;
    Mat Points(Points_num, 1, CV_32FC2);

    int i = 0;
    for (; i < Points1; i++) {
        Point2f pts;
        pts.x = rng.uniform(100, 200);
        pts.y = rng.uniform(100, 200);
        Points.at<Point2f>(i, 0) = pts;
    }

    for (; i < Points1 + Points2; i++) {
        Point2f pts;
        pts.x = rng.uniform(300, 400);
        pts.y = rng.uniform(100, 300);
        Points.at<Point2f>(i, 0) = pts;
    }

    for (; i < Points1 + Points2 + Points3; i++) {
        Point2f pts;
        pts.x = rng.uniform(100, 200);
        pts.y = rng.uniform(390, 490);
        Points.at<Point2f>(i, 0) = pts;
    }

    // using K mean value
    Mat labels;  //types of each points
    Mat centers; //center of label
    kmeans(Points, number, labels, TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 10, 0.1), 3, KMEANS_PP_CENTERS,
           centers);

    // set different kinds of colors
    img = Scalar::all(255);
    for (int j = 0; j < Points_num; j++) {
        int index = labels.at<int>(j);
        Point point = Points.at<Point2f>(j);
        circle(img,point,2,colorLut[index],-1,4);
    }

    // Draw a circle with the center of each cluster as the center
    for (int j=0;j<centers.rows;j++)
    {
        int x = centers.at<float>(j,0);
        int y = centers.at<float>(j,1);
        circle(img,Point(x,y),50,colorLut[j],1,LINE_AA);
    }

    imshow("KMean sort", img);
    waitKey(0);

    return 0;
}