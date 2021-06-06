cmake_minimum_required(VERSION 3.17)
project(test00)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenCV REQUIRED)
message("Opencv version: ${OpenCV_VERSION}")


include_directories(
        ${catkin_INCLUDE_DIRS}
        ${OpenCV_INCLUDE_DIRS}
)
link_directories(${OpenCV_LIB_DIR})

add_executable(main main.cpp)

add_executable(KMeanPoints KMeanPoints.cpp )
target_link_libraries(KMeanPoints  ${OpenCV_LIBS})

add_executable(video video.cpp)
target_link_libraries(video  ${OpenCV_LIBS})

add_executable(realsense_video realsense_video.cpp)
target_link_libraries(realsense_video  ${OpenCV_LIBS} )
set(DEPENDENCIES realsense2 )
target_link_libraries(realsense_video  ${DEPENDENCIES} )

add_executable(Graphical_UI Graphical_UI.cpp)
target_link_libraries(Graphical_UI  ${OpenCV_LIBS})

add_executable(Histogram_Filter Histogram_Filter.cpp)
target_link_libraries(Histogram_Filter  ${OpenCV_LIBS})

