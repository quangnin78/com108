create database COM2012,
use Com2012,

CREATE TABLE Giangvien (
    MaGiangVien INT PRIMARY KEY,
    TenGiangvien VARCHAR(255) NOT NULL,
    Chuyennganh DECIMAL(10,2) NOT NULL,
    Email INT NOT NULL
);

-- Tạo bảng HoaDon
CREATE TABLE Hoidong (
    Mahoidong INT PRIMARY KEY,
    Tenhoidong DATETIME NOT NULL,
    Chuyennganh VARCHAR(15) NULL,
    HocKy int not null
);

-- Tạo bảng HoaDonChiTiet
CREATE TABLE HoaDonChiTiet (
    MaSanPham INT,
    MaHoaDon INT,
    SoLuongMua INT NOT NULL,
    GiaMua DECIMAL(10,2) NOT NULL,
    primary key (MaSanPham, MaHoaDon),
    foreign key (MaSanPham) REFERENCES SanPham(MaSanPham),
    foreign key (MaHoaDon) REFERENCES HoaDon(MaHoaDon)
);

create table HoiDongTotNghiep (
    MaHoiDong int primary key,
    TenHoiDong VARCHAR(255) not null,
    ChuyenNganh VARCHAR(255) not null,
    KyHoc VARCHAR(50) not null
);

insert into SanPham values
(1, 'Laptop Dell', 15000000, 10),
(2, 'Chuột Logitech', 500000, 20),
(3, 'Bàn phím cơ', 1200000, 15);

INSERT INTO HoaDon VALUES
(101, '2025-03-05 10:00:00', '0987654321'),
(102, '2025-03-05 11:00:00', null), 
(103, '2025-03-05 12:00:00', '0971234567');

-- Thêm dữ liệu vào bảng HoaDonChiTiet
INSERT INTO HoaDonChiTiet VALUES
(1, 101, 1, 14500000),
(2, 102, 2, 480000),
(3, 103, 1, 1150000);

-- Thêm dữ liệu vào bảng HoiDongTotNghiep
INSERT INTO HoiDongTotNghiep VALUES
(201, 'Hội đồng 1', 'Công nghệ thông tin', 'Spring 2023'),
(202, 'Hội đồng 2', 'Khoa học máy tính', 'Spring 2023'),
(203, 'Hội đồng 3', 'Hệ thống thông tin', 'Spring 2023');

-- Hiển thị danh sách sản phẩm theo điều kiện
SELECT TenSanPham, GiaHienHanh FROM SanPham WHERE GiaHienHanh > 1000000;

-- Hiển thị danh sách hóa đơn của khách vãng lai
SELECT * FROM HoaDon WHERE SoDienThoai IS NULL;

-- Cập nhật số lượng sản phẩm theo mã
UPDATE SanPham SET SoLuongTon = SoLuongTon - 1 WHERE MaSanPham = 1;

-- Xóa sản phẩm có số lượng tồn bằng 0
DELETE FROM SanPham WHERE SoLuongTon = 0;

-- Hiển thị danh sách chi tiết hóa đơn
SELECT 
    hdc.MaHoaDon, 
    sp.TenSanPham, 
    hdc.SoLuongMua, 
    hdc.GiaMua, 
    (hdc.SoLuongMua * hdc.GiaMua) AS ThanhTien
FROM HoaDonChiTiet hdc
JOIN SanPham sp ON hdc.MaSanPham = sp.MaSanPham;

-- Hiển thị thông tin biến động giá của một sản phẩm, sắp xếp theo thời gian
SELECT 
    sp.TenSanPham, 
    hdc.GiaMua AS GiaKhiBan, 
    h.NgayLap AS ThoiDiemBan
FROM HoaDonChiTiet hdc
JOIN HoaDon h ON hdc.MaHoaDon = h.MaHoaDon
JOIN SanPham sp ON hdc.MaSanPham = sp.MaSanPham
WHERE sp.MaSanPham = 1
ORDER BY h.NgayLap;

-- Hiển thị danh sách hội đồng tốt nghiệp trong kỳ Spring 2023
SELECT MaHoiDong, TenHoiDong, ChuyenNganh FROM HoiDongTotNghiep WHERE KyHoc = 'Spring 2023';

select tengiangvien, chuyennganh, giangvien
