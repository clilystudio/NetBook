package com.clilystudio.netbook.util;

import android.os.Environment;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Calendar;

final class B
        implements Runnable {
    private /* synthetic */ A a;

    B(A a) {
        this.a = a;
    }

    @Override
    public final void run() {
        try {
            long l = Calendar.getInstance().getTimeInMillis();
            String str1 = "Manhuadao_" + l + ".apk";
            String str2 = "Manhuadao_" + l + ".tmp";
            if (Environment.getExternalStorageState().equals("mounted")) {
                String str3 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Manhuadao";
                File localFile3 = new File(str3);
                if (!localFile3.exists())
                    localFile3.mkdirs();
                A.a(this.a, str3 + str1);
                A.b(this.a, str3 + str2);
            }
            if ((A.a(this.a) == null) || (A.a(this.a).equals(""))) {
                A.b(this.a).sendEmptyMessage(0);
                return;
            }
            File localFile1 = new File(A.a(this.a));
            File localFile2 = new File(A.c(this.a));
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
            HttpURLConnection localHttpURLConnection = (HttpURLConnection) new URL("http://a.manhuadao.cn/ComicsIsland_zssq002.apk").openConnection();
            localHttpURLConnection.connect();
            int i = localHttpURLConnection.getContentLength();
            InputStream localInputStream = localHttpURLConnection.getInputStream();
            DecimalFormat localDecimalFormat = new DecimalFormat("0.00");
            A.c(this.a, localDecimalFormat.format(i / 1024.0F / 1024.0F) + "MB");
            byte[] arrayOfByte = new byte[1024];
            int j = 0;
            int k = localInputStream.read(arrayOfByte);
            while (k >= 0) {
                j += k;
                A.d(this.a, localDecimalFormat.format(j / 1024.0F / 1024.0F) + "MB");
                A.a(this.a, (int) (100.0F * (j / i)));
                A.b(this.a).sendEmptyMessage(1);
                localFileOutputStream.write(arrayOfByte, 0, k);
                k = localInputStream.read(arrayOfByte);
            }
            if (localFile2.renameTo(localFile1))
                A.b(this.a).sendEmptyMessage(2);
            localFileOutputStream.close();
            localInputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
