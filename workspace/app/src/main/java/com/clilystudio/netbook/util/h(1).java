package com.clilystudio.netbook.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.clilystudio.netbook.a.e;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public final class h extends e<String, Void, Bitmap>
{
  private static Bitmap a(String paramString)
  {
    try
    {
      URLConnection localURLConnection = new URL(paramString).openConnection();
      localURLConnection.connect();
      InputStream localInputStream = localURLConnection.getInputStream();
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(localInputStream);
      Bitmap localBitmap = BitmapFactory.decodeStream(localBufferedInputStream);
      localBufferedInputStream.close();
      localInputStream.close();
      return localBitmap;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.h
 * JD-Core Version:    0.6.0
 */