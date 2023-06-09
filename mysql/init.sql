CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE user (
  Us_id INT AUTO_INCREMENT PRIMARY KEY,
  Us_name VARCHAR(100),
  Us_email VARCHAR(100),
  Us_pass VARCHAR(100)
);


INSERT INTO user (Us_name, Us_email, Us_pass) VALUES
('John Smith', 'john.smith@apple.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Emma Johnson', 'emma.johnson@alphabet.com', '202cb962ac59075b964b07152d234b70'),
('Michael Brown', 'michael.brown@microsoft.com', '098f6bcd4621d373cade4e832627b4f6'),
('Sophia Taylor', 'sophia.taylor@amazon.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Matthew Davis', 'matthew.davis@berkshire.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Olivia Martinez', 'olivia.martinez@facebook.com', '098f6bcd4621d373cade4e832627b4f6'),
('James Anderson', 'james.anderson@exxonmobil.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Isabella Rodriguez', 'isabella.rodriguez@johnson.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Daniel Thomas', 'daniel.thomas@jpmorgan.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Ava Garcia', 'ava.garcia@wells.com', '098f6bcd4621d373cade4e832627b4f6'),
('William Wilson', 'william.wilson@tencentholdings.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('Mia Brown', 'mia.brown@alibaba.com', '202cb962ac59075b964b07152d234b70'),
('Alexander Johnson', 'alexander.johnson@generalelectric.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Emily Smith', 'emily.smith@samsung.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Benjamin Taylor', 'benjamin.taylor@att.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Sofia Davis', 'sofia.davis@ind.com', '1c383cd30b7c298ab50293adfecb7b18'),
('Michael Rodriguez', 'michael.rodriguez@nestle.com', '098f6bcd4621d373cade4e832627b4f6'),
('Abigail Anderson', 'abigail.anderson@bank.com', '202cb962ac59075b964b07152d234b70'),
('Daniel Garcia', 'daniel.garcia@pg.com', '1a1dc91c907325c69271ddf0c944bc72'),
('Elizabeth Thomas', 'elizabeth.thomas@china.com', 'd8578edf8458ce06fbc5bb76a58c5ca4');