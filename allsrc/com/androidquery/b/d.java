package com.androidquery.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ExifInterface;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.androidquery.util.BitmapCache;
import com.androidquery.util.b;
import com.androidquery.util.e;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

public final class d extends a<Bitmap, d>
{
  private static int c = 20;
  private static int d = 20;
  private static int e = 2500;
  private static int f = 160000;
  private static int g = 1000000;
  private static boolean h = false;
  private static Map<String, Bitmap> i;
  private static Map<String, Bitmap> j;
  private static Map<String, Bitmap> k;
  private static HashMap<String, WeakHashMap<ImageView, d>> l = new HashMap();
  private static Bitmap w = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
  private static Bitmap x = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
  private WeakReference<ImageView> m;
  private int n;
  private int o;
  private int p;
  private Bitmap q;
  private float r;
  private int s;
  private boolean t = true;
  private float u = 3.4028235E+38F;
  private boolean v;

  public d()
  {
    ((d)((d)((d)a(Bitmap.class)).b(true)).a(true)).a("");
  }

  private static int a(int paramInt1, int paramInt2)
  {
    int i1 = 1;
    for (int i2 = 0; ; i2++)
    {
      if (i2 >= 10);
      do
        return i1;
      while (paramInt1 < paramInt2 << 1);
      paramInt1 /= 2;
      i1 <<= 1;
    }
  }

  private static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    String str = b(paramString, paramInt1, paramInt2);
    Bitmap localBitmap = (Bitmap)d().get(str);
    if (localBitmap == null)
      localBitmap = (Bitmap)e().get(str);
    if (localBitmap == null)
    {
      localBitmap = (Bitmap)f().get(str);
      if ((localBitmap != null) && (c() == 200))
      {
        k = null;
        localBitmap = null;
      }
    }
    return localBitmap;
  }

  private static Bitmap a(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      paramBitmap = null;
    while (true)
    {
      return paramBitmap;
      try
      {
        int i4 = new ExifInterface(paramString).getAttributeInt("Orientation", 1);
        i1 = i4;
        if (i1 <= 0)
          continue;
        localMatrix = new Matrix();
        switch (i1)
        {
        default:
          int i2 = paramBitmap.getWidth();
          int i3 = paramBitmap.getHeight();
          Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i2, i3, localMatrix, true);
          com.androidquery.util.a.b("before", paramBitmap.getWidth() + ":" + paramBitmap.getHeight());
          com.androidquery.util.a.b("after", localBitmap.getWidth() + ":" + localBitmap.getHeight());
          if (paramBitmap != localBitmap)
            paramBitmap.recycle();
          return localBitmap;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          Matrix localMatrix;
          com.androidquery.util.a.a(localException);
          int i1 = 1;
          continue;
          localMatrix.setScale(-1.0F, 1.0F);
          continue;
          localMatrix.setRotate(180.0F);
          continue;
          localMatrix.setRotate(180.0F);
          localMatrix.postScale(-1.0F, 1.0F);
          continue;
          localMatrix.setRotate(90.0F);
          localMatrix.postScale(-1.0F, 1.0F);
          continue;
          localMatrix.setRotate(90.0F);
          continue;
          localMatrix.setRotate(-90.0F);
          localMatrix.postScale(-1.0F, 1.0F);
          continue;
          localMatrix.setRotate(-90.0F);
        }
      }
    }
  }

  // ERROR //
  private static Bitmap a(String paramString, BitmapFactory.Options paramOptions, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 204	android/graphics/BitmapFactory$Options
    //   7: dup
    //   8: invokespecial 205	android/graphics/BitmapFactory$Options:<init>	()V
    //   11: astore_1
    //   12: aload_1
    //   13: iconst_1
    //   14: putfield 208	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   17: aload_1
    //   18: iconst_1
    //   19: putfield 211	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   22: new 213	java/io/FileInputStream
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 214	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   30: astore_3
    //   31: aload_3
    //   32: invokevirtual 218	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   35: aconst_null
    //   36: aload_1
    //   37: invokestatic 224	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   40: astore 8
    //   42: aload 8
    //   44: astore 6
    //   46: aload 6
    //   48: ifnull +19 -> 67
    //   51: iload_2
    //   52: ifeq +15 -> 67
    //   55: aload_0
    //   56: aload 6
    //   58: invokestatic 226	com/androidquery/b/d:a	(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   61: astore 9
    //   63: aload 9
    //   65: astore 6
    //   67: aload_3
    //   68: invokestatic 229	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   71: aload 6
    //   73: areturn
    //   74: astore 10
    //   76: aconst_null
    //   77: astore_3
    //   78: aconst_null
    //   79: astore 6
    //   81: aload 10
    //   83: astore 5
    //   85: aload 5
    //   87: invokestatic 231	com/androidquery/util/a:b	(Ljava/lang/Throwable;)V
    //   90: aload_3
    //   91: invokestatic 229	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   94: aload 6
    //   96: areturn
    //   97: astore 7
    //   99: aconst_null
    //   100: astore_3
    //   101: aload_3
    //   102: invokestatic 229	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   105: aload 7
    //   107: athrow
    //   108: astore 7
    //   110: goto -9 -> 101
    //   113: astore 4
    //   115: aload 4
    //   117: astore 5
    //   119: aconst_null
    //   120: astore 6
    //   122: goto -37 -> 85
    //   125: astore 5
    //   127: goto -42 -> 85
    //
    // Exception table:
    //   from	to	target	type
    //   22	31	74	java/io/IOException
    //   22	31	97	finally
    //   31	42	108	finally
    //   55	63	108	finally
    //   85	90	108	finally
    //   31	42	113	java/io/IOException
    //   55	63	125	java/io/IOException
  }

  private Bitmap a(String paramString, byte[] paramArrayOfByte)
  {
    return a(paramString, paramArrayOfByte, this.n, this.t, this.s, false);
  }

  private static Bitmap a(String paramString, byte[] paramArrayOfByte, int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    if ((paramString == null) && (paramArrayOfByte == null))
      return null;
    BitmapFactory.Options localOptions2;
    if (paramInt1 > 0)
    {
      BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
      localOptions1.inJustDecodeBounds = true;
      a(paramString, paramArrayOfByte, localOptions1, paramBoolean2);
      int i1 = localOptions1.outWidth;
      if (!paramBoolean1)
        i1 = Math.max(i1, localOptions1.outHeight);
      int i2 = a(i1, paramInt1);
      localOptions2 = new BitmapFactory.Options();
      localOptions2.inSampleSize = i2;
    }
    while (true)
    {
      try
      {
        Bitmap localBitmap3 = a(paramString, paramArrayOfByte, localOptions2, paramBoolean2);
        localBitmap1 = localBitmap3;
        if (paramInt2 <= 0)
          continue;
        localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap2);
        Paint localPaint = new Paint();
        Rect localRect = new Rect(0, 0, localBitmap1.getWidth(), localBitmap1.getHeight());
        RectF localRectF = new RectF(localRect);
        float f1 = paramInt2;
        localPaint.setAntiAlias(true);
        localCanvas.drawARGB(0, 0, 0, 0);
        localPaint.setColor(-12434878);
        localCanvas.drawRoundRect(localRectF, f1, f1, localPaint);
        localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        localCanvas.drawBitmap(localBitmap1, localRect, localRect, localPaint);
        return localBitmap2;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        j = null;
        i = null;
        k = null;
        com.androidquery.util.a.b(localOutOfMemoryError);
        Bitmap localBitmap1 = null;
        continue;
        Bitmap localBitmap2 = localBitmap1;
        continue;
      }
      localOptions2 = null;
    }
  }

  private static Bitmap a(String paramString, byte[] paramArrayOfByte, BitmapFactory.Options paramOptions, boolean paramBoolean)
  {
    Bitmap localBitmap;
    if (paramString != null)
      localBitmap = a(paramString, paramOptions, paramBoolean);
    while (true)
    {
      if ((localBitmap == null) && (paramOptions != null) && (!paramOptions.inJustDecodeBounds))
        com.androidquery.util.a.b("decode image failed", paramString);
      return localBitmap;
      localBitmap = null;
      if (paramArrayOfByte == null)
        continue;
      localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
    }
  }

  private static Drawable a(ImageView paramImageView, Bitmap paramBitmap, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 0.0F)
      return new e(paramImageView.getResources(), paramBitmap, paramImageView, paramFloat1, paramFloat2);
    return new BitmapDrawable(paramImageView.getResources(), paramBitmap);
  }

  public static void a(Activity paramActivity, Context paramContext, ImageView paramImageView, String paramString1, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3, float paramFloat1, float paramFloat2, Object paramObject, com.androidquery.a.a parama, int paramInt4, int paramInt5, HttpHost paramHttpHost, String paramString2)
  {
    Bitmap localBitmap = null;
    if (paramBoolean1)
      localBitmap = a(paramString1, paramInt1, paramInt5);
    if (localBitmap != null)
    {
      paramImageView.setTag(1090453505, paramString1);
      b.a(paramObject, paramString1, false);
      a(paramImageView, localBitmap, paramBitmap, paramInt2, paramInt3, paramFloat1, 3.4028235E+38F, 4);
      return;
    }
    d locald1 = new d();
    d locald2 = (d)locald1.a(paramString1);
    locald2.m = new WeakReference(paramImageView);
    d locald3 = (d)((d)locald2.b(paramBoolean1)).a(paramBoolean2);
    locald3.n = paramInt1;
    locald3.o = paramInt2;
    locald3.q = paramBitmap;
    locald3.p = paramInt3;
    locald3.r = paramFloat1;
    locald3.u = 3.4028235E+38F;
    d locald4 = (d)((d)((d)locald3.a(paramObject)).a(parama)).a(paramInt4);
    locald4.s = paramInt5;
    locald4.b(paramString2);
    if (paramHttpHost != null)
      locald1.a(paramHttpHost.getHostName(), paramHttpHost.getPort());
    if (paramActivity != null)
    {
      locald1.a(paramActivity);
      return;
    }
    locald1.a(paramContext);
  }

  private static void a(ImageView paramImageView, Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, int paramInt3)
  {
    if ((paramBitmap1 != null) && (paramBitmap1.getWidth() == 1) && (paramBitmap1.getHeight() == 1) && (paramBitmap1 != w))
      paramBitmap1 = null;
    if (paramBitmap1 != null)
      paramImageView.setVisibility(0);
    while (paramBitmap1 == null)
    {
      paramImageView.setImageBitmap(null);
      return;
      if (paramInt1 == -2)
      {
        paramImageView.setVisibility(8);
        continue;
      }
      if (paramInt1 != -1)
        continue;
      paramImageView.setVisibility(4);
    }
    Object localObject1 = a(paramImageView, paramBitmap1, paramFloat1, paramFloat2);
    int i1;
    label119: Object localObject2;
    switch (paramInt2)
    {
    default:
      i1 = 0;
      if (i1 != 0)
      {
        if (paramBitmap2 != null)
          break;
        localObject2 = new AlphaAnimation(0.0F, 1.0F);
        ((Animation)localObject2).setInterpolator(new DecelerateInterpolator());
        ((Animation)localObject2).setDuration(300L);
      }
    case -1:
    case -3:
    case -2:
    }
    while (true)
    {
      paramImageView.setImageDrawable((Drawable)localObject1);
      if (localObject2 != null)
      {
        ((Animation)localObject2).setStartTime(AnimationUtils.currentAnimationTimeMillis());
        paramImageView.startAnimation((Animation)localObject2);
        return;
        i1 = 1;
        break label119;
        if (paramInt3 == 3)
        {
          i1 = 1;
          break label119;
        }
        if (paramInt3 != 1)
          break;
        i1 = 1;
        break label119;
        TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { a(paramImageView, paramBitmap2, paramFloat1, paramFloat2), localObject1 });
        localTransitionDrawable.setCrossFadeEnabled(true);
        localTransitionDrawable.startTransition(300);
        localObject1 = localTransitionDrawable;
        localObject2 = null;
        continue;
        if (paramInt2 > 0)
        {
          localObject2 = AnimationUtils.loadAnimation(paramImageView.getContext(), paramInt2);
          continue;
        }
      }
      else
      {
        paramImageView.setAnimation(null);
        return;
      }
      localObject2 = null;
    }
  }

  private void a(ImageView paramImageView, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBitmap == null)
      paramImageView.setImageDrawable(null);
    do
    {
      return;
      if (!paramBoolean)
        continue;
      paramImageView.setImageDrawable(a(paramImageView, paramBitmap, this.r, this.u));
      return;
    }
    while (this.a == null);
    a(paramImageView, paramBitmap, this.q, this.o, this.p, this.r, this.u, this.a.j());
  }

  private static void a(d paramd, String paramString, ImageView paramImageView, Bitmap paramBitmap, c paramc)
  {
    if ((paramImageView == null) || (paramd == null))
      return;
    if (paramString.equals(paramImageView.getTag(1090453505)))
    {
      if (!(paramImageView instanceof ImageView))
        break label43;
      paramd.a(paramImageView, paramBitmap, false);
    }
    while (true)
    {
      paramd.c(false);
      return;
      label43: paramd.a(paramImageView, paramBitmap, false);
    }
  }

  private void a(String paramString, Bitmap paramBitmap, c paramc)
  {
    ImageView localImageView1 = (ImageView)this.m.get();
    WeakHashMap localWeakHashMap = (WeakHashMap)l.remove(paramString);
    if ((localWeakHashMap == null) || (!localWeakHashMap.containsKey(localImageView1)))
      a(this, paramString, localImageView1, paramBitmap, paramc);
    Iterator localIterator;
    if (localWeakHashMap != null)
      localIterator = localWeakHashMap.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ImageView localImageView2 = (ImageView)localIterator.next();
      d locald = (d)localWeakHashMap.get(localImageView2);
      locald.a = paramc;
      a(locald, paramString, localImageView2, paramBitmap, paramc);
    }
  }

  private void a(String paramString, ImageView paramImageView)
  {
    WeakHashMap localWeakHashMap1 = (WeakHashMap)l.get(paramString);
    if (localWeakHashMap1 == null)
    {
      if (l.containsKey(paramString))
      {
        WeakHashMap localWeakHashMap2 = new WeakHashMap();
        localWeakHashMap2.put(paramImageView, this);
        l.put(paramString, localWeakHashMap2);
        return;
      }
      l.put(paramString, null);
      return;
    }
    localWeakHashMap1.put(paramImageView, this);
  }

  private static String b(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 > 0);
    for (String str = paramString + "#" + paramInt1; ; str = paramString)
    {
      if (paramInt2 > 0)
        str = str + "#" + paramInt2;
      return str;
    }
  }

  private void b(String paramString, Bitmap paramBitmap)
  {
    int i1 = this.n;
    int i2 = this.s;
    boolean bool = this.v;
    int i3;
    Map localMap;
    if (paramBitmap != null)
    {
      i3 = paramBitmap.getWidth() * paramBitmap.getHeight();
      if (!bool)
        break label89;
      localMap = f();
    }
    while ((i1 > 0) || (i2 > 0))
    {
      localMap.put(b(paramString, i1, i2), paramBitmap);
      if (!localMap.containsKey(paramString))
        localMap.put(paramString, null);
      return;
      label89: if (i3 <= e)
      {
        localMap = e();
        continue;
      }
      localMap = d();
    }
    localMap.put(paramString, paramBitmap);
  }

  private Bitmap d(String paramString)
  {
    if (!this.b)
      return null;
    return a(paramString, this.n, this.s);
  }

  private static Map<String, Bitmap> d()
  {
    if (j == null)
      j = Collections.synchronizedMap(new BitmapCache(d, f, g));
    return j;
  }

  private static Map<String, Bitmap> e()
  {
    if (i == null)
      i = Collections.synchronizedMap(new BitmapCache(c, e, 250000));
    return i;
  }

  private static Map<String, Bitmap> f()
  {
    if (k == null)
      k = Collections.synchronizedMap(new BitmapCache(100, f, 250000));
    return k;
  }

  protected final File a(File paramFile, String paramString)
  {
    return super.a(paramFile, paramString);
  }

  public final void a(Context paramContext)
  {
    String str = b();
    ImageView localImageView = (ImageView)this.m.get();
    if (str == null)
    {
      c(false);
      a(localImageView, null, false);
      return;
    }
    Bitmap localBitmap = d(str);
    if (localBitmap != null)
    {
      localImageView.setTag(1090453505, str);
      this.a = new c().a(4).a();
      a(str, localBitmap, this.a);
      return;
    }
    if ((!str.equals(localImageView.getTag(1090453505))) || (this.q != null))
    {
      localImageView.setTag(1090453505, str);
      if ((this.q == null) || (b(localImageView.getContext())))
        break label165;
      a(localImageView, this.q, true);
    }
    while (!l.containsKey(str))
    {
      a(str, localImageView);
      super.a(localImageView.getContext());
      return;
      label165: a(localImageView, null, true);
    }
    c(true);
    a(str, localImageView);
  }

  protected final boolean a()
  {
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.b.d
 * JD-Core Version:    0.6.0
 */