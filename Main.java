package andi.com;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Main {

        static String getResource(String rsc) {
            String val = "";

            try {

                Class cls = Class.forName("andi.com.Main");
                ClassLoader cLoader = cls.getClassLoader();

                InputStream i = cLoader.getResourceAsStream(rsc);

                BufferedReader r = new BufferedReader(new InputStreamReader(i));

                String l;
                while (( l = r.readLine()) != null){
                    val = val +l;
                }

            } catch (Exception e) {
                System.out.println(e);
            }
            val = val.replaceAll(";", "$0 ");
            return val;
        }

        public static void main(String[] args) {
            System.out.println(new Throwable().getStackTrace()[0].getClassName());
            System.out.println("file: " + getResource("andi/com/query.sql"));
    }
}
