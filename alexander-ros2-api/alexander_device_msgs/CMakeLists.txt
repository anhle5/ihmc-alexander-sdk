cmake_minimum_required(VERSION 3.5)

project(alexander_device_msgs)

if(NOT WIN32)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall -Wextra")
endif()

find_package(ament_cmake REQUIRED)

find_package(rosidl_default_generators REQUIRED)

#In order to update the list in case new files, "touch" this CMakeLists.txt file
file(GLOB msg_files RELATIVE ${CMAKE_CURRENT_LIST_DIR} "msg/*.msg")

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
