# Holds the current state of Alexander

# General Status
float64 time
bool is_faulted
bool is_calibrated
uint32 number_of_joints
uint32 number_of_imus
uint32 number_of_fts

# Joint States
alexander_device_msgs/OneDOFJointState[<=50] joint_states

# Sensor States
alexander_device_msgs/IMUState[<=50] imu_states
alexander_device_msgs/ForceTorqueState[<=50] ft_states