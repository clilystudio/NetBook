package com.clilystudio.netbook.util;

import android.os.Environment;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Calendar;

final class B implements Runnable {

    private A a;

    B(A A1) {
        a = A1;
    }

    public final void run() {
        File File8;
        File File9;
        FileOutputStream FileOutputStream10;
        int int12;
        InputStream InputStream13;
        DecimalFormat DecimalFormat14;
        byte[] byte_1darray16;
        int int17;

        label_89:
        {
            try {
                long long3 = Calendar.getInstance().getTimeInMillis();
                String String5 = new StringBuilder("Manhuadao_").append(long3).append(".apk").toString();
                String String6 = new StringBuilder("Manhuadao_").append(long3).append(".tmp").toString();

                if (Environment.getExternalStorageState().equals("mounted")) {
                    String String23 = new StringBuilder().append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/Manhuadao").toString();
                    File File24 = new File(String23);

                    if (!File24.exists())
                        File24.mkdirs();
                    A.a(a, new StringBuilder().append(String23).append(String5).toString());
                    A.b(a, new StringBuilder().append(String23).append(String6).toString());
                }
                if (A.a(a) != null && !com.clilystudio.netbook.util.A.a(a).equals(""))
                    break label_89;
                A.b(a).sendEmptyMessage(0);
            } catch (MalformedURLException MalformedURLException2) {
                MalformedURLException2.printStackTrace();
                return;
            } catch (Exception Exception1) {
                Exception1.printStackTrace();
                return;
            }
            return;
        }
        try {
            HttpURLConnection HttpURLConnection11;

            File8 = new File(A.a(a));
            File9 = new File(A.c(a));
            FileOutputStream10 = new FileOutputStream(File9);
            HttpURLConnection11 = (HttpURLConnection) new URL("http://a.manhuadao.cn/ComicsIsland_zssq002.apk").openConnection();
            HttpURLConnection11.connect();
            int12 = HttpURLConnection11.getContentLength();
            InputStream13 = HttpURLConnection11.getInputStream();
            DecimalFormat14 = new DecimalFormat("0.00");
            A.c(a, new StringBuilder().append(DecimalFormat14.format((double) ((float) int12 / 1024.0F / 1024.0F))).append("MB").toString());
            byte_1darray16 = new byte[1024];
        } catch (MalformedURLException MalformedURLException25) {
            MalformedURLException25.printStackTrace();
            return;
        } catch (Exception Exception26) {
            Exception26.printStackTrace();
            return;
        }
        int17 = 0;
        for (; ; ) {
            int int18;

            try {
                int18 = InputStream13.read(byte_1darray16);
            } catch (MalformedURLException MalformedURLException27) {
                MalformedURLException27.printStackTrace();
                return;
            } catch (Exception Exception28) {
                Exception28.printStackTrace();
                return;
            }
            int17 += int18;
            try {
                A.d(a, new StringBuilder().append(DecimalFormat14.format((double) ((float) int17 / 1024.0F / 1024.0F))).append("MB").toString());
                A.a(a, (int) (100.0F * ((float) int17 / (float) int12)));
                A.b(a).sendEmptyMessage(1);
            } catch (MalformedURLException MalformedURLException29) {
                MalformedURLException29.printStackTrace();
                return;
            } catch (Exception Exception30) {
                Exception30.printStackTrace();
                return;
            }
            if (int18 <= 0) {
                try {
                    if (File9.renameTo(File8))
                        A.b(a).sendEmptyMessage(2);
                    FileOutputStream10.close();
                    InputStream13.close();
                } catch (MalformedURLException MalformedURLException31) {
                    MalformedURLException31.printStackTrace();
                    return;
                } catch (Exception Exception32) {
                    Exception32.printStackTrace();
                    return;
                }
                return;
            } else {
                try {
                    FileOutputStream10.write(byte_1darray16, 0, int18);
                    continue;
                } catch (MalformedURLException MalformedURLException33) {
                    MalformedURLException33.printStackTrace();
                    return;
                } catch (Exception Exception34) {
                    Exception34.printStackTrace();
                    return;
                }
            }
        }
    }
}
