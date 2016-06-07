package com.nostra13.universalimageloader.core.a;

import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.assist.c;
import com.nostra13.universalimageloader.core.d;
import com.nostra13.universalimageloader.core.download.ImageDownloader;

public final class e
{
  private final String a;
  private final String b;
  private final c c;
  private final ImageScaleType d;
  private final ViewScaleType e;
  private final ImageDownloader f;
  private final Object g;
  private final boolean h;
  private final BitmapFactory.Options i;

  public e(String paramString1, String paramString2, String paramString3, c paramc, ViewScaleType paramViewScaleType, ImageDownloader paramImageDownloader, d paramd)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramc;
    this.d = paramd.j();
    this.e = paramViewScaleType;
    this.f = paramImageDownloader;
    this.g = paramd.n();
    this.h = paramd.m();
    this.i = new BitmapFactory.Options();
    BitmapFactory.Options localOptions1 = paramd.k();
    BitmapFactory.Options localOptions2 = this.i;
    localOptions2.inDensity = localOptions1.inDensity;
    localOptions2.inDither = localOptions1.inDither;
    localOptions2.inInputShareable = localOptions1.inInputShareable;
    localOptions2.inJustDecodeBounds = localOptions1.inJustDecodeBounds;
    localOptions2.inPreferredConfig = localOptions1.inPreferredConfig;
    localOptions2.inPurgeable = localOptions1.inPurgeable;
    localOptions2.inSampleSize = localOptions1.inSampleSize;
    localOptions2.inScaled = localOptions1.inScaled;
    localOptions2.inScreenDensity = localOptions1.inScreenDensity;
    localOptions2.inTargetDensity = localOptions1.inTargetDensity;
    localOptions2.inTempStorage = localOptions1.inTempStorage;
    if (Build.VERSION.SDK_INT >= 10)
      localOptions2.inPreferQualityOverSpeed = localOptions1.inPreferQualityOverSpeed;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localOptions2.inBitmap = localOptions1.inBitmap;
      localOptions2.inMutable = localOptions1.inMutable;
    }
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final c c()
  {
    return this.c;
  }

  public final ImageScaleType d()
  {
    return this.d;
  }

  public final ViewScaleType e()
  {
    return this.e;
  }

  public final ImageDownloader f()
  {
    return this.f;
  }

  public final Object g()
  {
    return this.g;
  }

  public final boolean h()
  {
    return this.h;
  }

  public final BitmapFactory.Options i()
  {
    return this.i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.a.e
 * JD-Core Version:    0.6.0
 */