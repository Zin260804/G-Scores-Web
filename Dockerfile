# Sử dụng image JDK để chạy app
FROM eclipse-temurin:21-jdk

# Tạo thư mục làm việc
WORKDIR /app

# Copy file JAR đã được build sẵn (ví dụ: từ local hoặc từ giai đoạn build trước)
COPY *.jar app.jar

# Mở cổng 8080
EXPOSE 8080

# Lệnh chạy ứng dụng Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]