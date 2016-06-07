package com.nostra13.universalimageloader.core.download;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class a
  implements ImageDownloader
{
  private Context a;
  private int b;
  private int c;

  public a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = 5000;
    this.c = 20000;
  }

  private HttpURLConnection a(String paramString)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(Uri.encode(paramString, "@#&=*+-_.,:!?()/~'%")).openConnection();
    localHttpURLConnection.setConnectTimeout(5000);
    localHttpURLConnection.setReadTimeout(20000);
    return localHttpURLConnection;
  }

  // ERROR //
  private InputStream b(String paramString, Object paramObject)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 60	com/nostra13/universalimageloader/core/download/a:a	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   7: astore 4
    //   9: aload 4
    //   11: invokevirtual 64	java/net/HttpURLConnection:getResponseCode	()I
    //   14: bipush 100
    //   16: idiv
    //   17: iconst_3
    //   18: if_icmpne +27 -> 45
    //   21: iload_3
    //   22: iconst_5
    //   23: if_icmpge +22 -> 45
    //   26: aload_0
    //   27: aload 4
    //   29: ldc 66
    //   31: invokevirtual 70	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   34: invokespecial 60	com/nostra13/universalimageloader/core/download/a:a	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   37: astore 4
    //   39: iinc 3 1
    //   42: goto -33 -> 9
    //   45: aload 4
    //   47: invokevirtual 74	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   50: astore 11
    //   52: new 76	com/nostra13/universalimageloader/core/assist/a
    //   55: dup
    //   56: new 78	java/io/BufferedInputStream
    //   59: dup
    //   60: aload 11
    //   62: ldc 79
    //   64: invokespecial 82	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   67: aload 4
    //   69: invokevirtual 85	java/net/HttpURLConnection:getContentLength	()I
    //   72: invokespecial 86	com/nostra13/universalimageloader/core/assist/a:<init>	(Ljava/io/InputStream;I)V
    //   75: areturn
    //   76: astore 5
    //   78: aload 4
    //   80: invokevirtual 89	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   83: astore 6
    //   85: ldc 79
    //   87: newarray byte
    //   89: astore 7
    //   91: aload 6
    //   93: aload 7
    //   95: iconst_0
    //   96: ldc 79
    //   98: invokevirtual 95	java/io/InputStream:read	([BII)I
    //   101: istore 10
    //   103: iload 10
    //   105: iconst_m1
    //   106: if_icmpne -15 -> 91
    //   109: aload 6
    //   111: invokestatic 100	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   114: aload 5
    //   116: athrow
    //   117: astore 9
    //   119: aload 6
    //   121: invokestatic 100	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   124: goto -10 -> 114
    //   127: astore 8
    //   129: aload 6
    //   131: invokestatic 100	com/arcsoft/hpay100/a/a:c	(Ljava/io/Closeable;)V
    //   134: aload 8
    //   136: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   45	52	76	java/io/IOException
    //   91	103	117	java/io/IOException
    //   91	103	127	finally
  }

  public final InputStream a(String paramString, Object paramObject)
  {
    switch (b.a[ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default:
      throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", new Object[] { paramString }));
    case 1:
    case 2:
      return b(paramString, paramObject);
    case 3:
      String str2 = ImageDownloader.Scheme.FILE.crop(paramString);
      return new com.nostra13.universalimageloader.core.assist.a(new BufferedInputStream(new FileInputStream(str2), 32768), (int)new File(str2).length());
    case 4:
      ContentResolver localContentResolver = this.a.getContentResolver();
      Uri localUri = Uri.parse(paramString);
      if (paramString.startsWith("content://com.android.contacts/"))
        return ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, localUri);
      return localContentResolver.openInputStream(localUri);
    case 5:
      String str1 = ImageDownloader.Scheme.ASSETS.crop(paramString);
      return this.a.getAssets().open(str1);
    case 6:
    }
    int i = Integer.parseInt(ImageDownloader.Scheme.DRAWABLE.crop(paramString));
    return this.a.getResources().openRawResource(i);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.download.a
 * JD-Core Version:    0.6.0
 */