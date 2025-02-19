CREATE DATABASE IF NOT EXISTS db;

USE db;

-- 유저 생성
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY '1234';

-- 권한 부여
GRANT ALL PRIVILEGES ON db.* TO 'admin'@'%';

-- 변경사항 적용
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS coin_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coin VARCHAR(10) NOT NULL,
    _time TIME NOT NULL,
    real_value DECIMAL(10,4),
    predicted_value DECIMAL(10,4) NOT NULL
);

CREATE TABLE IF NOT EXISTS mobile_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coin VARCHAR(10) NOT NULL,
    _time TIME NOT NULL,
    volume DECIMAL(10,2),
    increase_rate DECIMAL(10,5),
    updown VARCHAR(10)
);


