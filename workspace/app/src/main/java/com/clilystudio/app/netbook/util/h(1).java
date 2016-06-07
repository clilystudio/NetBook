package com.clilystudio.app.netbook.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public final class h extends e_BaseAsyncTask<String, Void, Bitmap> {
    private static Bitmap a(String paramString) {
        try {
            URLConnection localURLConnection = new URL(paramString).openConnection();
            localURLConnection.connect();
            InputStream localInputStream = localURLConnection.getInputStream();
            BufferedInputStream localBufferedInputStream = new BufferedInputStream(localInputStream);
            Bitmap localBitmap = BitmapFactory.decodeStream(localBufferedInputStream);
            localBufferedInputStream.close();
            localInputStream.close();
            return localBitmap;
        } catch (IOException localIOException) {
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.h
 * JD-Core Version:    0.6.2
 */