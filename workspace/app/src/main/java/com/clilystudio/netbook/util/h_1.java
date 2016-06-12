package com.clilystudio.netbook.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public final class h extends com.clilystudio.netbook.a.e {

    private static Bitmap a(String String1) {
        Bitmap Bitmap6;

        try {
            URLConnection URLConnection3 = new URL(String1).openConnection();
            InputStream InputStream4;
            Object Object5;

            URLConnection3.connect();
            InputStream4 = URLConnection3.getInputStream();
            Object5 = new BufferedInputStream(InputStream4);
            Bitmap6 = BitmapFactory.decodeStream((InputStream) Object5);
            ((BufferedInputStream) Object5).close();
            InputStream4.close();
        } catch (IOException IOException2) {
            return null;
        }
        return Bitmap6;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a(((String[]) Object_1darray1)[0]);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (Bitmap) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null)
            e.a((Bitmap) Object2);
    }
}
