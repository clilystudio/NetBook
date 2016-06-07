package com.activeandroid.util;

import android.database.Cursor;
import java.io.Closeable;
import java.io.IOException;

public class IOUtils
{
  public static void closeQuietly(Cursor paramCursor)
  {
    if (paramCursor == null)
      return;
    try
    {
      paramCursor.close();
      return;
    }
    catch (Exception localException)
    {
      Log.e("Couldn't close cursor.", localException);
    }
  }

  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable == null)
      return;
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e("Couldn't close closeable.", localIOException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.IOUtils
 * JD-Core Version:    0.6.0
 */