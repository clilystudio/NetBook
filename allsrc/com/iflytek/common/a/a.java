package com.iflytek.common.a;

import com.iflytek.common.c.c;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class a extends Thread
{
  boolean a = true;
  private String b;
  private b c;

  public a(String paramString, b paramb)
  {
    this.b = paramString;
    this.c = paramb;
  }

  // ERROR //
  private String a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 26	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 29	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_2
    //   9: new 31	java/io/ByteArrayOutputStream
    //   12: dup
    //   13: invokespecial 32	java/io/ByteArrayOutputStream:<init>	()V
    //   16: astore_3
    //   17: ldc 34
    //   19: new 36	java/lang/StringBuilder
    //   22: dup
    //   23: ldc 38
    //   25: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: aload_1
    //   29: arraylength
    //   30: invokevirtual 45	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   33: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: invokestatic 54	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   39: pop
    //   40: aload_2
    //   41: aload_3
    //   42: invokestatic 57	com/iflytek/common/a/a:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   45: aload_3
    //   46: invokevirtual 60	java/io/ByteArrayOutputStream:flush	()V
    //   49: new 62	java/lang/String
    //   52: dup
    //   53: aload_3
    //   54: invokevirtual 66	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   57: invokespecial 67	java/lang/String:<init>	([B)V
    //   60: astore 5
    //   62: ldc 34
    //   64: new 36	java/lang/StringBuilder
    //   67: dup
    //   68: ldc 69
    //   70: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: aload 5
    //   75: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 54	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: aload_3
    //   86: invokevirtual 75	java/io/ByteArrayOutputStream:close	()V
    //   89: aload_2
    //   90: invokevirtual 76	java/io/ByteArrayInputStream:close	()V
    //   93: aload 5
    //   95: areturn
    //   96: astore 4
    //   98: aconst_null
    //   99: astore 5
    //   101: aload 4
    //   103: astore 6
    //   105: ldc 34
    //   107: ldc 78
    //   109: aload 6
    //   111: invokestatic 81	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   114: pop
    //   115: aload 5
    //   117: areturn
    //   118: astore 6
    //   120: goto -15 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   0	62	96	java/lang/Exception
    //   62	93	118	java/lang/Exception
  }

  private static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(paramInputStream);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localGZIPInputStream.read(arrayOfByte, 0, 1024);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    localGZIPInputStream.close();
  }

  public void run()
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet(this.b);
      localHttpGet.setHeader("Accept-Encoding", "gzip, deflate");
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        Header localHeader = localHttpResponse.getFirstHeader("Content-Length");
        int i = 0;
        if (localHeader != null)
          i = Integer.parseInt(localHeader.getValue());
        byte[] arrayOfByte3;
        if ((i > 0) && (i < 1048576))
        {
          arrayOfByte3 = new byte[i];
          localHttpResponse.getEntity().getContent().read(arrayOfByte3);
        }
        byte[] arrayOfByte2;
        for (Object localObject = arrayOfByte3; this.a; localObject = arrayOfByte2)
        {
          str = a(localObject);
          if (str == null)
            str = new String(localObject);
          if (this.c == null)
            return;
          this.c.a(str, 0);
          return;
          byte[] arrayOfByte1 = new byte[1048576];
          int j = localHttpResponse.getEntity().getContent().read(arrayOfByte1);
          arrayOfByte2 = new byte[j];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, j);
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        c.a("HttpGetThread", "Other Exception", localException);
        if (this.c == null)
          break;
        this.c.a(null, -1);
        return;
        String str = null;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.a.a
 * JD-Core Version:    0.6.0
 */