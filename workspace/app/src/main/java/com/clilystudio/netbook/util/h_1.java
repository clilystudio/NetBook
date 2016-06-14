package com.clilystudio.netbook.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public final class h
        extends com.clilystudio.netbook.a_pack.e<String, Void, Bitmap> {
    private static Bitmap a(String string) {
        try {
            URLConnection uRLConnection = new URL(string).openConnection();
            uRLConnection.connect();
            InputStream inputStream = uRLConnection.getInputStream();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            Bitmap bitmap = BitmapFactory.decodeStream(bufferedInputStream);
            bufferedInputStream.close();
            inputStream.close();
            return bitmap;
        } catch (IOException var1_5) {
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return h.a(((String[]) arrobject)[0]);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Bitmap bitmap = (Bitmap) object;
        super.onPostExecute(bitmap);
        if (bitmap != null) {
            e.a(bitmap);
        }
    }
}
