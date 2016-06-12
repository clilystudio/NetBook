package com.clilystudio.netbook.download;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

final class c extends Thread {

    private a a;

    c(a a1) {
        a = a1;
    }

    public final void run() {
        InputStream InputStream1 = null;
        FileOutputStream FileOutputStream4;

        try {
            File File2 = new File(a.c(a));

            if (!File2.exists())
                File2.mkdirs();
            FileOutputStream4 = new FileOutputStream(new File(a.c(a), a.d(a)));
        } catch (IOException IOException6) {
            FileOutputStream4 = null;
            try {
                IOException6.printStackTrace();
            } finally {
                if (FileOutputStream4 != null) {
                    try {
                        FileOutputStream4.close();
                    } catch (IOException IOException5) {
                        IOException5.printStackTrace();
                        throw Object3;
                    }
                }
                if (InputStream1 != null) {
                    try {
                        InputStream1.close();
                    } catch (IOException IOException14) {
                        IOException14.printStackTrace();
                    }
                }
                throw Object3;
            }
            if (FileOutputStream4 != null) {
                try {
                    FileOutputStream4.close();
                } catch (IOException IOException7) {
                    IOException7.printStackTrace();
                    return;
                }
            }
            if (InputStream1 != null) {
                try {
                    InputStream1.close();
                } catch (IOException IOException15) {
                    IOException15.printStackTrace();
                    return;
                }
                return;
            }
        } finally {
            FileOutputStream4 = null;
            if (FileOutputStream4 != null)
                FileOutputStream4.close();
            if (InputStream1 != null)
                InputStream1.close();
            throw Object3;
        }
    }
}
