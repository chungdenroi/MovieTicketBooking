ALTER TABLE `bookingmovies`.`ticket`
drop constraint fk_movie;


ALTER TABLE `bookingmovies`.`ticket`
ADD CONSTRAINT fk_movie
    FOREIGN KEY (movie_movieid)
    REFERENCES `bookingmovies`.`movie`
        (movieid)
    ON DELETE CASCADE ON UPDATE NO ACTION;
-- movies
INSERT INTO `bookingmovies`.`movie` (`movieid`, `actor`, `description`, `director`, `movie_name`, `premiere_date`, `time`, `type`, `image`, `number_of_tickets`) VALUES ('4', 'Tom Holland, Zendaya,..', 'Người Nhện: Không Còn Nhà - Spider-Man: No Way Home tiếp nối câu chuyện ở những phần phim trước, khi giờ đây siêu anh hùng người nhện là Peter Parker...', 'Jon Watts', 'Người Nhện: Không Còn Nhà', '2022-02-24', '150', 'Hành động, Phiêu lưu', 'media_images_2021_11_18_z2944635011042-a4f7f110fa858e956bb8d6cff8465235-091059-181121-52.jpg', '2500');
INSERT INTO `bookingmovies`.`movie` (`movieid`, `actor`, `description`, `director`, `movie_name`, `premiere_date`, `time`, `type`, `image`, `number_of_tickets`) VALUES ('3', 'Bảo Anh, Minh Hằng...', 'Sau một thời gian dài không gặp, cuộc sống của mỗi thành viên trong hội ế đều có nhiều thay đổi. Camy là người duy nhất “thoát ế”...', 'Đinh Hà Uyên Thư', 'Bẫy Ngọt Ngào', '2022-02-27', '90', 'Tâm lý', 'media_images_2021_10_27_untitled-3-135143-271021-25.jpg', '2000');
INSERT INTO `bookingmovies`.`movie` (`movieid`, `actor`, `description`, `director`, `movie_name`, `premiere_date`, `time`, `type`, `image`, `number_of_tickets`) VALUES ('2', 'Khả Như, Vân Trang, Mạc Can, Huỳnh Thanh Trực,…', 'Sau Bắc Kim Thang và Rừng Thế Mạng, Chuyện Ma Gần Nhà là bộ phim thứ ba của bộ đôi đạo diễn Trần Hữu Tấn và nhà sản xuất Hoàng Quân..', 'Trần Hữu Tấn', 'Chuyện Ma Gần Nhà', '2022-02-25', '100', 'Kinh dị', 'media_images_2022_01_13_400x633-144306-130122-78.jpg', '1500');
INSERT INTO `bookingmovies`.`movie` (`movieid`, `actor`, `description`, `director`, `movie_name`, `premiere_date`, `time`, `type`, `image`, `number_of_tickets`) VALUES ('1', 'Ninh Dương Lan Ngọc, Nhã Phương', 'Đạo diễn Nhất Trung đã đặt tất cả tâm huyết của mình cho dự án 1990 với hy vọng mang đến thước phim chân thực nhất về những bộn bề sợ hãi, lo toan và phiền muộn trong cuộc sống người phụ nữ tuổi 30 hiện đại.', 'Nhất Trung', '1990', '2022-02-26', '120', 'Hài hước, Tình cảm', 'media_images_2022_01_18_400x633-111617-180122-55.jpg', '1200');

-- tickets
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A6', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A7', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A8', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A9', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A10', '07:30', '1', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '07:30', '1', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '09:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '09:30', '1', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A1', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A2', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A3', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A4', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A5', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B1', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B2', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B3', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B4', '07:30', '1', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B5', '07:30', '1', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '07:30', '2', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '09:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '09:30', '2', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A1', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A2', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A3', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A4', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A5', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B1', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B2', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B3', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B4', '07:30', '2', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B5', '07:30', '2', 'Empty');


-- 3
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '07:30', '3', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A1', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A2', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A3', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A4', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'A5', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B1', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B2', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B3', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B4', '09:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-25', '120000', 'B5', '09:30', '3', 'Empty');

INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A1', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A2', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A3', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A4', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'A5', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B1', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B2', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B3', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B4', '07:30', '3', 'Empty');
INSERT INTO `bookingmovies`.`ticket` (`date`, `price`, `seat`, `time`, `movie_movieid`, `status`) VALUES ('2022-02-26', '120000', 'B5', '07:30', '3', 'Empty');



