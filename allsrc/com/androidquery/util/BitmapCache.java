package com.androidquery.util;

import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class BitmapCache extends LinkedHashMap<String, Bitmap>
{
  private static final long serialVersionUID = 1L;
  private int maxCount;
  private int maxPixels;
  private int maxTotalPixels;
  private int pixels;

  public BitmapCache(int paramInt1, int paramInt2, int paramInt3)
  {
    super(8, 0.75F, true);
    this.maxCount = paramInt1;
    this.maxPixels = paramInt2;
    this.maxTotalPixels = paramInt3;
  }

  private static int a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return 0;
    return paramBitmap.getWidth() * paramBitmap.getHeight();
  }

  public void clear()
  {
    super.clear();
    this.pixels = 0;
  }

  public Bitmap put(String paramString, Bitmap paramBitmap)
  {
    int i = a(paramBitmap);
    int j = this.maxPixels;
    Bitmap localBitmap = null;
    if (i <= j)
    {
      this.pixels = (i + this.pixels);
      localBitmap = (Bitmap)super.put(paramString, paramBitmap);
      if (localBitmap != null)
        this.pixels -= a(localBitmap);
    }
    return localBitmap;
  }

  public Bitmap remove(Object paramObject)
  {
    Bitmap localBitmap = (Bitmap)super.remove(paramObject);
    if (localBitmap != null)
      this.pixels -= a(localBitmap);
    return localBitmap;
  }

  public boolean removeEldestEntry(Map.Entry<String, Bitmap> paramEntry)
  {
    if ((this.pixels > this.maxTotalPixels) || (size() > this.maxCount))
      remove(paramEntry.getKey());
    Iterator localIterator;
    if (this.pixels > this.maxTotalPixels)
      localIterator = keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      do
      {
        return false;
        localIterator.next();
        localIterator.remove();
      }
      while (this.pixels <= this.maxTotalPixels);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.BitmapCache
 * JD-Core Version:    0.6.0
 */