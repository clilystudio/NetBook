package android.support.v4.print;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintManager;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

class PrintHelperKitkat
{
  public static final int COLOR_MODE_COLOR = 2;
  public static final int COLOR_MODE_MONOCHROME = 1;
  private static final String LOG_TAG = "PrintHelperKitkat";
  private static final int MAX_PRINT_SIZE = 3500;
  public static final int ORIENTATION_LANDSCAPE = 1;
  public static final int ORIENTATION_PORTRAIT = 2;
  public static final int SCALE_MODE_FILL = 2;
  public static final int SCALE_MODE_FIT = 1;
  int mColorMode = 2;
  final Context mContext;
  BitmapFactory.Options mDecodeOptions = null;
  private final Object mLock = new Object();
  int mOrientation = 1;
  int mScaleMode = 2;

  PrintHelperKitkat(Context paramContext)
  {
    this.mContext = paramContext;
  }

  private Matrix getMatrix(int paramInt1, int paramInt2, RectF paramRectF, int paramInt3)
  {
    Matrix localMatrix = new Matrix();
    float f1 = paramRectF.width() / paramInt1;
    float f2;
    if (paramInt3 == 2)
      f2 = Math.max(f1, paramRectF.height() / paramInt2);
    while (true)
    {
      localMatrix.postScale(f2, f2);
      localMatrix.postTranslate((paramRectF.width() - f2 * paramInt1) / 2.0F, (paramRectF.height() - f2 * paramInt2) / 2.0F);
      return localMatrix;
      f2 = Math.min(f1, paramRectF.height() / paramInt2);
    }
  }

  private Bitmap loadBitmap(Uri paramUri, BitmapFactory.Options paramOptions)
  {
    InputStream localInputStream = null;
    if ((paramUri == null) || (this.mContext == null))
      throw new IllegalArgumentException("bad argument to loadBitmap");
    try
    {
      localInputStream = this.mContext.getContentResolver().openInputStream(paramUri);
      Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream, null, paramOptions);
      if (localInputStream != null);
      try
      {
        localInputStream.close();
        return localBitmap;
      }
      catch (IOException localIOException2)
      {
        Log.w("PrintHelperKitkat", "close fail ", localIOException2);
        return localBitmap;
      }
    }
    finally
    {
      if (localInputStream == null);
    }
    try
    {
      localInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.w("PrintHelperKitkat", "close fail ", localIOException1);
    }
  }

  // ERROR //
  private Bitmap loadConstrainedBitmap(Uri paramUri, int paramInt)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iload_2
    //   3: ifle +14 -> 17
    //   6: aload_1
    //   7: ifnull +10 -> 17
    //   10: aload_0
    //   11: getfield 45	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
    //   14: ifnonnull +13 -> 27
    //   17: new 93	java/lang/IllegalArgumentException
    //   20: dup
    //   21: ldc 131
    //   23: invokespecial 98	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   26: athrow
    //   27: new 133	android/graphics/BitmapFactory$Options
    //   30: dup
    //   31: invokespecial 134	android/graphics/BitmapFactory$Options:<init>	()V
    //   34: astore 4
    //   36: aload 4
    //   38: iload_3
    //   39: putfield 138	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   42: aload_0
    //   43: aload_1
    //   44: aload 4
    //   46: invokespecial 140	android/support/v4/print/PrintHelperKitkat:loadBitmap	(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   49: pop
    //   50: aload 4
    //   52: getfield 143	android/graphics/BitmapFactory$Options:outWidth	I
    //   55: istore 6
    //   57: aload 4
    //   59: getfield 146	android/graphics/BitmapFactory$Options:outHeight	I
    //   62: istore 7
    //   64: iload 6
    //   66: ifle +8 -> 74
    //   69: iload 7
    //   71: ifgt +5 -> 76
    //   74: aconst_null
    //   75: areturn
    //   76: iload 6
    //   78: iload 7
    //   80: invokestatic 149	java/lang/Math:max	(II)I
    //   83: istore 8
    //   85: iload 8
    //   87: iload_2
    //   88: if_icmple +16 -> 104
    //   91: iload 8
    //   93: iconst_1
    //   94: iushr
    //   95: istore 8
    //   97: iload_3
    //   98: iconst_1
    //   99: ishl
    //   100: istore_3
    //   101: goto -16 -> 85
    //   104: iload_3
    //   105: ifle -31 -> 74
    //   108: iload 6
    //   110: iload 7
    //   112: invokestatic 151	java/lang/Math:min	(II)I
    //   115: iload_3
    //   116: idiv
    //   117: ifle -43 -> 74
    //   120: aload_0
    //   121: getfield 37	android/support/v4/print/PrintHelperKitkat:mLock	Ljava/lang/Object;
    //   124: astore 9
    //   126: aload 9
    //   128: monitorenter
    //   129: aload_0
    //   130: new 133	android/graphics/BitmapFactory$Options
    //   133: dup
    //   134: invokespecial 134	android/graphics/BitmapFactory$Options:<init>	()V
    //   137: putfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   140: aload_0
    //   141: getfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   144: iconst_1
    //   145: putfield 154	android/graphics/BitmapFactory$Options:inMutable	Z
    //   148: aload_0
    //   149: getfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   152: iload_3
    //   153: putfield 157	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   156: aload_0
    //   157: getfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   160: astore 11
    //   162: aload 9
    //   164: monitorexit
    //   165: aload_0
    //   166: aload_1
    //   167: aload 11
    //   169: invokespecial 140	android/support/v4/print/PrintHelperKitkat:loadBitmap	(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   172: astore 15
    //   174: aload_0
    //   175: getfield 37	android/support/v4/print/PrintHelperKitkat:mLock	Ljava/lang/Object;
    //   178: astore 16
    //   180: aload 16
    //   182: monitorenter
    //   183: aload_0
    //   184: aconst_null
    //   185: putfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   188: aload 16
    //   190: monitorexit
    //   191: aload 15
    //   193: areturn
    //   194: astore 17
    //   196: aload 16
    //   198: monitorexit
    //   199: aload 17
    //   201: athrow
    //   202: astore 10
    //   204: aload 9
    //   206: monitorexit
    //   207: aload 10
    //   209: athrow
    //   210: astore 12
    //   212: aload_0
    //   213: getfield 37	android/support/v4/print/PrintHelperKitkat:mLock	Ljava/lang/Object;
    //   216: astore 13
    //   218: aload 13
    //   220: monitorenter
    //   221: aload_0
    //   222: aconst_null
    //   223: putfield 35	android/support/v4/print/PrintHelperKitkat:mDecodeOptions	Landroid/graphics/BitmapFactory$Options;
    //   226: aload 13
    //   228: monitorexit
    //   229: aload 12
    //   231: athrow
    //   232: astore 14
    //   234: aload 13
    //   236: monitorexit
    //   237: aload 14
    //   239: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   183	191	194	finally
    //   196	199	194	finally
    //   129	165	202	finally
    //   204	207	202	finally
    //   165	174	210	finally
    //   221	229	232	finally
    //   234	237	232	finally
  }

  public int getColorMode()
  {
    return this.mColorMode;
  }

  public int getOrientation()
  {
    return this.mOrientation;
  }

  public int getScaleMode()
  {
    return this.mScaleMode;
  }

  public void printBitmap(String paramString, Bitmap paramBitmap, PrintHelperKitkat.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    if (paramBitmap == null)
      return;
    int i = this.mScaleMode;
    PrintManager localPrintManager = (PrintManager)this.mContext.getSystemService("print");
    PrintAttributes.MediaSize localMediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
    if (paramBitmap.getWidth() > paramBitmap.getHeight())
      localMediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
    PrintAttributes localPrintAttributes = new PrintAttributes.Builder().setMediaSize(localMediaSize).setColorMode(this.mColorMode).build();
    localPrintManager.print(paramString, new PrintHelperKitkat.1(this, paramString, paramBitmap, i, paramOnPrintFinishCallback), localPrintAttributes);
  }

  public void printBitmap(String paramString, Uri paramUri, PrintHelperKitkat.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    PrintHelperKitkat.2 local2 = new PrintHelperKitkat.2(this, paramString, paramUri, paramOnPrintFinishCallback, this.mScaleMode);
    PrintManager localPrintManager = (PrintManager)this.mContext.getSystemService("print");
    PrintAttributes.Builder localBuilder = new PrintAttributes.Builder();
    localBuilder.setColorMode(this.mColorMode);
    if (this.mOrientation == 1)
      localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
    while (true)
    {
      localPrintManager.print(paramString, local2, localBuilder.build());
      return;
      if (this.mOrientation != 2)
        continue;
      localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
    }
  }

  public void setColorMode(int paramInt)
  {
    this.mColorMode = paramInt;
  }

  public void setOrientation(int paramInt)
  {
    this.mOrientation = paramInt;
  }

  public void setScaleMode(int paramInt)
  {
    this.mScaleMode = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.print.PrintHelperKitkat
 * JD-Core Version:    0.6.0
 */