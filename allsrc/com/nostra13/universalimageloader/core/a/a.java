package com.nostra13.universalimageloader.core.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Build.VERSION;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.IOException;
import java.io.InputStream;

public final class a
  implements d
{
  private boolean a;

  public a(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  private static b a(String paramString)
  {
    int i = 0;
    boolean bool = true;
    try
    {
      int j = new ExifInterface(ImageDownloader.Scheme.FILE.crop(paramString)).getAttributeInt("Orientation", 1);
      i = 0;
      switch (j)
      {
      case 1:
      default:
        bool = false;
      case 2:
      case 6:
      case 7:
      case 3:
      case 4:
      case 8:
      case 5:
      }
      while (true)
      {
        return new b(i, bool);
        bool = false;
        i = 90;
        continue;
        bool = false;
        i = 180;
        continue;
        bool = false;
        i = 270;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[bool];
        arrayOfObject[0] = paramString;
        com.nostra13.universalimageloader.b.d.c("Can't read EXIF tags from file [%s]", arrayOfObject);
      }
    }
  }

  private InputStream a(InputStream paramInputStream, e parame)
  {
    try
    {
      paramInputStream.reset();
      return paramInputStream;
    }
    catch (IOException localIOException)
    {
      com.arcsoft.hpay100.a.a.c(paramInputStream);
    }
    return b(parame);
  }

  private static InputStream b(e parame)
  {
    return parame.f().a(parame.b(), parame.g());
  }

  public final Bitmap a(e parame)
  {
    InputStream localInputStream = b(parame);
    c localc;
    com.nostra13.universalimageloader.core.assist.c localc1;
    ImageScaleType localImageScaleType1;
    int j;
    Bitmap localBitmap1;
    try
    {
      BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
      localOptions1.inJustDecodeBounds = true;
      BitmapFactory.decodeStream(localInputStream, null, localOptions1);
      String str1 = parame.b();
      int m;
      if (parame.h())
      {
        String str2 = localOptions1.outMimeType;
        if ((Build.VERSION.SDK_INT >= 5) && ("image/jpeg".equalsIgnoreCase(str2)) && (ImageDownloader.Scheme.ofUri(str1) == ImageDownloader.Scheme.FILE))
        {
          m = 1;
          if (m == 0)
            break label274;
        }
      }
      label274: for (b localb = a(str1); ; localb = new b())
      {
        localc = new c(new com.nostra13.universalimageloader.core.assist.c(localOptions1.outWidth, localOptions1.outHeight, localb.a), localb);
        localInputStream = a(localInputStream, parame);
        localc1 = localc.a;
        localImageScaleType1 = parame.d();
        if (localImageScaleType1 != ImageScaleType.NONE)
          break label295;
        j = com.nostra13.universalimageloader.b.a.a(localc1);
        if ((j > 1) && (this.a))
        {
          Object[] arrayOfObject5 = new Object[4];
          arrayOfObject5[0] = localc1;
          arrayOfObject5[1] = localc1.a(j);
          arrayOfObject5[2] = Integer.valueOf(j);
          arrayOfObject5[3] = parame.a();
          com.nostra13.universalimageloader.b.d.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", arrayOfObject5);
        }
        BitmapFactory.Options localOptions2 = parame.i();
        localOptions2.inSampleSize = j;
        localBitmap1 = BitmapFactory.decodeStream(localInputStream, null, localOptions2);
        com.arcsoft.hpay100.a.a.c(localInputStream);
        if (localBitmap1 != null)
          break label340;
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = parame.a();
        com.nostra13.universalimageloader.b.d.d("Image can't be decoded [%s]", arrayOfObject4);
        return localBitmap1;
        m = 0;
        break;
      }
    }
    finally
    {
      com.arcsoft.hpay100.a.a.c(localInputStream);
    }
    label295: com.nostra13.universalimageloader.core.assist.c localc2 = parame.c();
    if (localImageScaleType1 == ImageScaleType.IN_SAMPLE_POWER_OF_2);
    for (boolean bool1 = true; ; bool1 = false)
    {
      int i = com.nostra13.universalimageloader.b.a.a(localc1, localc2, parame.e(), bool1);
      j = i;
      break;
    }
    label340: int k = localc.b.a;
    boolean bool2 = localc.b.b;
    Matrix localMatrix = new Matrix();
    ImageScaleType localImageScaleType2 = parame.d();
    com.nostra13.universalimageloader.core.assist.c localc3;
    com.nostra13.universalimageloader.core.assist.c localc4;
    ViewScaleType localViewScaleType;
    if ((localImageScaleType2 == ImageScaleType.EXACTLY) || (localImageScaleType2 == ImageScaleType.EXACTLY_STRETCHED))
    {
      localc3 = new com.nostra13.universalimageloader.core.assist.c(localBitmap1.getWidth(), localBitmap1.getHeight(), k);
      localc4 = parame.c();
      localViewScaleType = parame.e();
      if (localImageScaleType2 != ImageScaleType.EXACTLY_STRETCHED)
        break label651;
    }
    label651: for (boolean bool3 = true; ; bool3 = false)
    {
      float f = com.nostra13.universalimageloader.b.a.b(localc3, localc4, localViewScaleType, bool3);
      if (Float.compare(f, 1.0F) != 0)
      {
        localMatrix.setScale(f, f);
        if (this.a)
        {
          Object[] arrayOfObject3 = new Object[4];
          arrayOfObject3[0] = localc3;
          arrayOfObject3[1] = localc3.a(f);
          arrayOfObject3[2] = Float.valueOf(f);
          arrayOfObject3[3] = parame.a();
          com.nostra13.universalimageloader.b.d.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", arrayOfObject3);
        }
      }
      if (bool2)
      {
        localMatrix.postScale(-1.0F, 1.0F);
        if (this.a)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = parame.a();
          com.nostra13.universalimageloader.b.d.a("Flip image horizontally [%s]", arrayOfObject2);
        }
      }
      if (k != 0)
      {
        localMatrix.postRotate(k);
        if (this.a)
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(k);
          arrayOfObject1[1] = parame.a();
          com.nostra13.universalimageloader.b.d.a("Rotate image on %1$d° [%2$s]", arrayOfObject1);
        }
      }
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, localBitmap1.getWidth(), localBitmap1.getHeight(), localMatrix, true);
      if (localBitmap2 != localBitmap1)
        localBitmap1.recycle();
      return localBitmap2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.a.a
 * JD-Core Version:    0.6.0
 */