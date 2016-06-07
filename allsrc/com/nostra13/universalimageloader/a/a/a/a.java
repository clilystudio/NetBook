package com.nostra13.universalimageloader.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public abstract class a
  implements com.nostra13.universalimageloader.a.a.a
{
  private static Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  private File b;
  private File c;
  private com.nostra13.universalimageloader.a.a.b.a d;
  private int e = 32768;
  private Bitmap.CompressFormat f = a;
  private int g = 100;

  public a(File paramFile1, File paramFile2, com.nostra13.universalimageloader.a.a.b.a parama)
  {
    if (paramFile1 == null)
      throw new IllegalArgumentException("cacheDir argument must be not null");
    if (parama == null)
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    this.b = paramFile1;
    this.c = paramFile2;
    this.d = parama;
  }

  private File b(String paramString)
  {
    String str = this.d.a(paramString);
    File localFile = this.b;
    if ((!this.b.exists()) && (!this.b.mkdirs()) && (this.c != null) && ((this.c.exists()) || (this.c.mkdirs())))
      localFile = this.c;
    return new File(localFile, str);
  }

  public final File a(String paramString)
  {
    return b(paramString);
  }

  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    File localFile1 = b(paramString);
    File localFile2 = new File(localFile1.getAbsolutePath() + ".tmp");
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(localFile2), this.e);
    try
    {
      boolean bool1 = paramBitmap.compress(this.f, this.g, localBufferedOutputStream);
      boolean bool2 = bool1;
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
      if ((bool2) && (!localFile2.renameTo(localFile1)))
        bool2 = false;
      if (!bool2)
        localFile2.delete();
      paramBitmap.recycle();
      return bool2;
    }
    finally
    {
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
      localFile2.delete();
    }
    throw localObject;
  }

  // ERROR //
  public final boolean a(String paramString, java.io.InputStream paramInputStream, com.nostra13.universalimageloader.b.c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 72	com/nostra13/universalimageloader/a/a/a/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 4
    //   7: new 60	java/io/File
    //   10: dup
    //   11: new 75	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   18: aload 4
    //   20: invokevirtual 80	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   23: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 86
    //   28: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   37: astore 5
    //   39: new 92	java/io/BufferedOutputStream
    //   42: dup
    //   43: new 94	java/io/FileOutputStream
    //   46: dup
    //   47: aload 5
    //   49: invokespecial 97	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   52: aload_0
    //   53: getfield 33	com/nostra13/universalimageloader/a/a/a/a:e	I
    //   56: invokespecial 100	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   59: astore 6
    //   61: aload_2
    //   62: aload 6
    //   64: aload_3
    //   65: aload_0
    //   66: getfield 33	com/nostra13/universalimageloader/a/a/a/a:e	I
    //   69: invokestatic 125	com/arcsoft/hpay100/a/a:a	(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c;I)Z
    //   72: istore 11
    //   74: iload 11
    //   76: istore 9
    //   78: aload 6
    //   80: invokestatic 111	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   83: aload_2
    //   84: invokestatic 111	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   87: iload 9
    //   89: ifeq +16 -> 105
    //   92: aload 5
    //   94: aload 4
    //   96: invokevirtual 115	java/io/File:renameTo	(Ljava/io/File;)Z
    //   99: ifne +6 -> 105
    //   102: iconst_0
    //   103: istore 9
    //   105: iload 9
    //   107: ifne +9 -> 116
    //   110: aload 5
    //   112: invokevirtual 118	java/io/File:delete	()Z
    //   115: pop
    //   116: iload 9
    //   118: ireturn
    //   119: astore 7
    //   121: aload 6
    //   123: invokestatic 111	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   126: aload 7
    //   128: athrow
    //   129: astore 8
    //   131: iconst_0
    //   132: istore 9
    //   134: aload_2
    //   135: invokestatic 111	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   138: iload 9
    //   140: ifeq +16 -> 156
    //   143: aload 5
    //   145: aload 4
    //   147: invokevirtual 115	java/io/File:renameTo	(Ljava/io/File;)Z
    //   150: ifne +6 -> 156
    //   153: iconst_0
    //   154: istore 9
    //   156: iload 9
    //   158: ifne +9 -> 167
    //   161: aload 5
    //   163: invokevirtual 118	java/io/File:delete	()Z
    //   166: pop
    //   167: aload 8
    //   169: athrow
    //   170: astore 8
    //   172: goto -38 -> 134
    //
    // Exception table:
    //   from	to	target	type
    //   61	74	119	finally
    //   39	61	129	finally
    //   121	129	129	finally
    //   78	83	170	finally
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a
 * JD-Core Version:    0.6.0
 */