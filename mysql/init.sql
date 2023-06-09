CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE user (
  Us_id INT AUTO_INCREMENT PRIMARY KEY,
  Us_name VARCHAR(100),
  Us_email VARCHAR(100),
  Us_pass VARCHAR(100)
);


INSERT INTO user (Us_name, Us_email, Us_pass) VALUES
('John Smith', 'john.smith@company1.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Emma Johnson', 'emma.johnson@company2.com', '202cb962ac59075b964b07152d234b70'),
('Michael Brown', 'michael.brown@company3.com', '098f6bcd4621d373cade4e832627b4f6'),
('Sophia Taylor', 'sophia.taylor@company4.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Matthew Davis', 'matthew.davis@company5.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Olivia Martinez', 'olivia.martinez@company6.com', '098f6bcd4621d373cade4e832627b4f6'),
('James Anderson', 'james.anderson@company7.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Isabella Rodriguez', 'isabella.rodriguez@company8.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Daniel Thomas', 'daniel.thomas@company9.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Ava Garcia', 'ava.garcia@company10.com', '098f6bcd4621d373cade4e832627b4f6'),
('William Wilson', 'william.wilson@company11.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Mia Brown', 'mia.brown@company12.com', '202cb962ac59075b964b07152d234b70'),
('Alexander Johnson', 'alexander.johnson@company13.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Emily Smith', 'emily.smith@company14.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Benjamin Taylor', 'benjamin.taylor@company15.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Sofia Davis', 'sofia.davis@company16.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Michael Rodriguez', 'michael.rodriguez@company17.com', '098f6bcd4621d373cade4e832627b4f6'),
('Abigail Anderson', 'abigail.anderson@company18.com', '202cb962ac59075b964b07152d234b70'),
('Daniel Garcia', 'daniel.garcia@company19.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Elizabeth Thomas', 'elizabeth.thomas@company20.com', 'd8578edf8458ce06fbc5bb76a58c5ca4');