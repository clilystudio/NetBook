package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class HttpURLConnectionImpl extends HttpURLConnection
{
  protected m a;
  private final int b;
  private Proxy c;
  private final C d = new C();
  private int e;
  private IOException f;

  protected HttpURLConnectionImpl(URL paramURL, int paramInt)
  {
    super(paramURL);
    this.b = paramInt;
  }

  protected HttpURLConnectionImpl(URL paramURL, int paramInt, Proxy paramProxy)
  {
    this(paramURL, paramInt);
    this.c = paramProxy;
  }

  private String a(C paramC, String paramString)
  {
    List localList = com.arcsoft.hpay100.a.a.a(paramC, paramString);
    if (localList.isEmpty())
      throw new IOException("No authentication challenges found");
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (usingProxy());
      for (InetAddress localInetAddress = ((InetSocketAddress)this.c.address()).getAddress(); ; localInetAddress = InetAddress.getByName(getURL().getHost()))
      {
        PasswordAuthentication localPasswordAuthentication = Authenticator.requestPasswordAuthentication(localInetAddress, f(), this.url.getProtocol(), localc.b, localc.a);
        if (localPasswordAuthentication == null)
          break;
        String str = com.integralblue.httpresponsecache.compat.libcore.a.a.b(com.integralblue.httpresponsecache.compat.c.a(localPasswordAuthentication.getUserName() + ":" + new String(localPasswordAuthentication.getPassword()), com.integralblue.httpresponsecache.compat.a.c));
        return localc.a + " " + str;
      }
    }
    return null;
  }

  private int f()
  {
    if (usingProxy());
    for (int i = ((InetSocketAddress)this.c.address()).getPort(); ; i = getURL().getPort())
    {
      if (i < 0)
        i = this.b;
      return i;
    }
  }

  private void g()
  {
    if (this.f != null)
      throw this.f;
    if (this.a != null)
      return;
    this.connected = true;
    do
      try
      {
        if (this.doOutput)
        {
          if (this.method != "GET")
            continue;
          this.method = "POST";
        }
        this.a = a(this.method, this.d, null, null);
        return;
      }
      catch (IOException localIOException)
      {
        this.f = localIOException;
        throw localIOException;
      }
    while ((this.method == "POST") || (this.method == "PUT"));
    throw new ProtocolException(this.method + " does not support writing");
  }

  // ERROR //
  private m h()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 200	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:g	()V
    //   4: aload_0
    //   5: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   8: invokevirtual 204	com/integralblue/httpresponsecache/compat/libcore/net/http/m:f	()Z
    //   11: ifeq +72 -> 83
    //   14: aload_0
    //   15: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   18: areturn
    //   19: astore 8
    //   21: aload_0
    //   22: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   25: invokevirtual 207	com/integralblue/httpresponsecache/compat/libcore/net/http/m:e	()Ljava/io/OutputStream;
    //   28: astore 9
    //   30: aload_0
    //   31: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   34: invokevirtual 210	com/integralblue/httpresponsecache/compat/libcore/net/http/m:m	()Z
    //   37: ifeq +148 -> 185
    //   40: aload 9
    //   42: ifnull +11 -> 53
    //   45: aload 9
    //   47: instanceof 212
    //   50: ifeq +135 -> 185
    //   53: aload_0
    //   54: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   57: iconst_0
    //   58: invokevirtual 215	com/integralblue/httpresponsecache/compat/libcore/net/http/m:a	(Z)V
    //   61: aload_0
    //   62: aload_0
    //   63: aload_0
    //   64: getfield 182	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:method	Ljava/lang/String;
    //   67: aload_0
    //   68: getfield 27	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:d	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   71: aconst_null
    //   72: aload 9
    //   74: checkcast 212	com/integralblue/httpresponsecache/compat/libcore/net/http/I
    //   77: invokevirtual 189	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   80: putfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   83: aload_0
    //   84: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   87: invokevirtual 217	com/integralblue/httpresponsecache/compat/libcore/net/http/m:b	()V
    //   90: aload_0
    //   91: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   94: invokevirtual 220	com/integralblue/httpresponsecache/compat/libcore/net/http/m:w	()V
    //   97: aload_0
    //   98: invokevirtual 223	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:getResponseCode	()I
    //   101: lookupswitch	default:+59->160, 300:+148->249, 301:+148->249, 302:+148->249, 303:+148->249, 401:+110->211, 407:+93->194
    //   161: nop
    //   162: <illegal opcode>
    //   163: astore 4
    //   165: aload 4
    //   167: getstatic 229	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:NONE	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   170: if_acmpne +206 -> 376
    //   173: aload_0
    //   174: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   177: invokevirtual 232	com/integralblue/httpresponsecache/compat/libcore/net/http/m:o	()V
    //   180: aload_0
    //   181: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   184: areturn
    //   185: aload_0
    //   186: aload 8
    //   188: putfield 170	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:f	Ljava/io/IOException;
    //   191: aload 8
    //   193: athrow
    //   194: aload_0
    //   195: invokevirtual 71	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:usingProxy	()Z
    //   198: ifne +13 -> 211
    //   201: new 48	java/io/IOException
    //   204: dup
    //   205: ldc 234
    //   207: invokespecial 53	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   210: athrow
    //   211: aload_0
    //   212: aload_0
    //   213: invokevirtual 223	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:getResponseCode	()I
    //   216: aload_0
    //   217: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   220: invokevirtual 237	com/integralblue/httpresponsecache/compat/libcore/net/http/m:h	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
    //   223: aload_0
    //   224: getfield 27	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:d	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   227: invokevirtual 240	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)Z
    //   230: ifeq +11 -> 241
    //   233: getstatic 243	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:SAME_CONNECTION	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   236: astore 4
    //   238: goto -73 -> 165
    //   241: getstatic 229	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:NONE	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   244: astore 4
    //   246: goto -81 -> 165
    //   249: aload_0
    //   250: invokevirtual 246	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:getInstanceFollowRedirects	()Z
    //   253: ifeq -93 -> 160
    //   256: iconst_1
    //   257: aload_0
    //   258: getfield 248	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:e	I
    //   261: iadd
    //   262: istore_1
    //   263: aload_0
    //   264: iload_1
    //   265: putfield 248	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:e	I
    //   268: iload_1
    //   269: iconst_5
    //   270: if_icmple +13 -> 283
    //   273: new 193	java/net/ProtocolException
    //   276: dup
    //   277: ldc 250
    //   279: invokespecial 196	java/net/ProtocolException:<init>	(Ljava/lang/String;)V
    //   282: athrow
    //   283: aload_0
    //   284: ldc 252
    //   286: invokevirtual 256	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   289: astore_2
    //   290: aload_2
    //   291: ifnull -131 -> 160
    //   294: aload_0
    //   295: getfield 90	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:url	Ljava/net/URL;
    //   298: astore_3
    //   299: aload_0
    //   300: new 92	java/net/URL
    //   303: dup
    //   304: aload_3
    //   305: aload_2
    //   306: invokespecial 259	java/net/URL:<init>	(Ljava/net/URL;Ljava/lang/String;)V
    //   309: putfield 90	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:url	Ljava/net/URL;
    //   312: aload_3
    //   313: invokevirtual 96	java/net/URL:getProtocol	()Ljava/lang/String;
    //   316: aload_0
    //   317: getfield 90	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:url	Ljava/net/URL;
    //   320: invokevirtual 96	java/net/URL:getProtocol	()Ljava/lang/String;
    //   323: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   326: ifeq -166 -> 160
    //   329: aload_3
    //   330: invokevirtual 157	java/net/URL:getHost	()Ljava/lang/String;
    //   333: aload_0
    //   334: getfield 90	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:url	Ljava/net/URL;
    //   337: invokevirtual 157	java/net/URL:getHost	()Ljava/lang/String;
    //   340: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   343: ifeq +25 -> 368
    //   346: aload_3
    //   347: invokestatic 266	com/arcsoft/hpay100/a/a:a	(Ljava/net/URL;)I
    //   350: aload_0
    //   351: getfield 90	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:url	Ljava/net/URL;
    //   354: invokestatic 266	com/arcsoft/hpay100/a/a:a	(Ljava/net/URL;)I
    //   357: if_icmpne +11 -> 368
    //   360: getstatic 243	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:SAME_CONNECTION	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   363: astore 4
    //   365: goto -200 -> 165
    //   368: getstatic 269	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:DIFFERENT_CONNECTION	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   371: astore 4
    //   373: goto -208 -> 165
    //   376: aload_0
    //   377: getfield 182	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:method	Ljava/lang/String;
    //   380: astore 5
    //   382: aload_0
    //   383: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   386: invokevirtual 207	com/integralblue/httpresponsecache/compat/libcore/net/http/m:e	()Ljava/io/OutputStream;
    //   389: astore 6
    //   391: aload_0
    //   392: invokevirtual 223	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:getResponseCode	()I
    //   395: istore 7
    //   397: iload 7
    //   399: sipush 300
    //   402: if_icmpeq +27 -> 429
    //   405: iload 7
    //   407: sipush 301
    //   410: if_icmpeq +19 -> 429
    //   413: iload 7
    //   415: sipush 302
    //   418: if_icmpeq +11 -> 429
    //   421: iload 7
    //   423: sipush 303
    //   426: if_icmpne +10 -> 436
    //   429: ldc 184
    //   431: astore 5
    //   433: aconst_null
    //   434: astore 6
    //   436: aload 6
    //   438: ifnull +29 -> 467
    //   441: aload 6
    //   443: instanceof 212
    //   446: ifne +21 -> 467
    //   449: new 271	java/net/HttpRetryException
    //   452: dup
    //   453: ldc_w 273
    //   456: aload_0
    //   457: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   460: invokevirtual 276	com/integralblue/httpresponsecache/compat/libcore/net/http/m:i	()I
    //   463: invokespecial 279	java/net/HttpRetryException:<init>	(Ljava/lang/String;I)V
    //   466: athrow
    //   467: aload 4
    //   469: getstatic 269	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry:DIFFERENT_CONNECTION	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    //   472: if_acmpne +10 -> 482
    //   475: aload_0
    //   476: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   479: invokevirtual 232	com/integralblue/httpresponsecache/compat/libcore/net/http/m:o	()V
    //   482: aload_0
    //   483: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   486: iconst_1
    //   487: invokevirtual 215	com/integralblue/httpresponsecache/compat/libcore/net/http/m:a	(Z)V
    //   490: aload_0
    //   491: aload_0
    //   492: aload 5
    //   494: aload_0
    //   495: getfield 27	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:d	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   498: aload_0
    //   499: getfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   502: invokevirtual 283	com/integralblue/httpresponsecache/compat/libcore/net/http/m:l	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;
    //   505: aload 6
    //   507: checkcast 212	com/integralblue/httpresponsecache/compat/libcore/net/http/I
    //   510: invokevirtual 189	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   513: putfield 172	com/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl:a	Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   516: goto -433 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   83	97	19	java/io/IOException
  }

  final m a()
  {
    return this.a;
  }

  protected m a(String paramString, C paramC, h paramh, I paramI)
  {
    return new m(this, paramString, paramC, paramh, paramI);
  }

  final void a(Proxy paramProxy)
  {
    this.c = paramProxy;
  }

  final boolean a(int paramInt, G paramG, C paramC)
  {
    if ((paramInt != 407) && (paramInt != 401))
      throw new IllegalArgumentException();
    if (paramInt == 407);
    String str2;
    for (String str1 = "Proxy-Authenticate"; ; str1 = "WWW-Authenticate")
    {
      str2 = a(paramG.e(), str1);
      if (str2 != null)
        break;
      return false;
    }
    if (paramInt == 407);
    for (String str3 = "Proxy-Authorization"; ; str3 = "Authorization")
    {
      paramC.b(str3, str2);
      return true;
    }
  }

  public final void addRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected)
      throw new IllegalStateException("Cannot add request property after connection is made");
    if (paramString1 == null)
      throw new NullPointerException("field == null");
    this.d.a(paramString1, paramString2);
  }

  final int b()
  {
    return this.b;
  }

  final int c()
  {
    return this.fixedContentLength;
  }

  public final void connect()
  {
    g();
    try
    {
      this.a.b();
      return;
    }
    catch (IOException localIOException)
    {
      this.f = localIOException;
    }
    throw localIOException;
  }

  final int d()
  {
    return this.chunkLength;
  }

  public final void disconnect()
  {
    if (this.a != null)
    {
      if (this.a.f())
        com.arcsoft.hpay100.a.a.b(this.a.j());
      this.a.a(false);
    }
  }

  final Proxy e()
  {
    return this.c;
  }

  public final InputStream getErrorStream()
  {
    try
    {
      m localm = h();
      boolean bool = localm.p();
      Object localObject = null;
      if (bool)
      {
        int i = localm.i();
        localObject = null;
        if (i >= 400)
        {
          InputStream localInputStream = localm.j();
          localObject = localInputStream;
        }
      }
      return localObject;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final String getHeaderField(int paramInt)
  {
    try
    {
      String str = h().h().e().b(paramInt);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final String getHeaderField(String paramString)
  {
    try
    {
      C localC = h().h().e();
      if (paramString == null)
        return localC.a();
      String str = localC.d(paramString);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final String getHeaderFieldKey(int paramInt)
  {
    try
    {
      String str = h().h().e().a(paramInt);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final Map<String, List<String>> getHeaderFields()
  {
    try
    {
      Map localMap = h().h().e().g();
      return localMap;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final InputStream getInputStream()
  {
    if (!this.doInput)
      throw new ProtocolException("This protocol does not support input");
    m localm = h();
    if (getResponseCode() >= 400)
      throw new FileNotFoundException(this.url.toString());
    InputStream localInputStream = localm.j();
    if (localInputStream == null)
      throw new IOException("No response body exists; responseCode=" + getResponseCode());
    return localInputStream;
  }

  public final OutputStream getOutputStream()
  {
    connect();
    OutputStream localOutputStream = this.a.e();
    if (localOutputStream == null)
      throw new ProtocolException("method does not support a request body: " + this.method);
    if (this.a.f())
      throw new ProtocolException("cannot write request body after response has been read");
    return localOutputStream;
  }

  public final Permission getPermission()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (usingProxy());
    for (String str = ((InetSocketAddress)this.c.address()).getHostName(); ; str = getURL().getHost())
      return new SocketPermission(str + ":" + f(), "connect, resolve");
  }

  public final Map<String, List<String>> getRequestProperties()
  {
    if (this.connected)
      throw new IllegalStateException("Cannot access request header fields after connection is set");
    return this.d.g();
  }

  public final String getRequestProperty(String paramString)
  {
    if (paramString == null)
      return null;
    return this.d.d(paramString);
  }

  public final int getResponseCode()
  {
    return h().i();
  }

  public String getResponseMessage()
  {
    return h().h().e().d();
  }

  public final void setRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected)
      throw new IllegalStateException("Cannot set request property after connection is made");
    if (paramString1 == null)
      throw new NullPointerException("field == null");
    this.d.b(paramString1, paramString2);
  }

  public final boolean usingProxy()
  {
    return (this.c != null) && (this.c.type() != Proxy.Type.DIRECT);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.HttpURLConnectionImpl
 * JD-Core Version:    0.6.0
 */