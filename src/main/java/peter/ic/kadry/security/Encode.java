package peter.ic.kadry.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Encode {
    public static void main(String[] args) {
        try (BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in))) {

            PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            System.out.print("Введите пароль пользователя: ");
            String pas = bufferedReader.readLine();
            System.out.print("BCrypt: ");
            System.out.println(passwordEncoder.encode(pas));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}