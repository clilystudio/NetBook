package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.I;
import com.squareup.okhttp.J;
import com.squareup.okhttp.K;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.l;
import com.squareup.okhttp.internal.spdy.M;
import com.squareup.okhttp.internal.spdy.d;
import com.squareup.okhttp.v;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.o;
import okio.x;

public final class y
  implements A
{
  private static final List<ByteString> a;
  private static final List<ByteString> b;
  private final m c;
  private final com.squareup.okhttp.internal.spdy.A d;
  private M e;

  static
  {
    ByteString[] arrayOfByteString1 = new ByteString[5];
    arrayOfByteString1[0] = ByteString.encodeUtf8("connection");
    arrayOfByteString1[1] = ByteString.encodeUtf8("host");
    arrayOfByteString1[2] = ByteString.encodeUtf8("keep-alive");
    arrayOfByteString1[3] = ByteString.encodeUtf8("proxy-connection");
    arrayOfByteString1[4] = ByteString.encodeUtf8("transfer-encoding");
    a = l.a(arrayOfByteString1);
    ByteString[] arrayOfByteString2 = new ByteString[8];
    arrayOfByteString2[0] = ByteString.encodeUtf8("connection");
    arrayOfByteString2[1] = ByteString.encodeUtf8("host");
    arrayOfByteString2[2] = ByteString.encodeUtf8("keep-alive");
    arrayOfByteString2[3] = ByteString.encodeUtf8("proxy-connection");
    arrayOfByteString2[4] = ByteString.encodeUtf8("te");
    arrayOfByteString2[5] = ByteString.encodeUtf8("transfer-encoding");
    arrayOfByteString2[6] = ByteString.encodeUtf8("encoding");
    arrayOfByteString2[7] = ByteString.encodeUtf8("upgrade");
    b = l.a(arrayOfByteString2);
  }

  public y(m paramm, com.squareup.okhttp.internal.spdy.A paramA)
  {
    this.c = paramm;
    this.d = paramA;
  }

  private static boolean a(Protocol paramProtocol, ByteString paramByteString)
  {
    if (paramProtocol == Protocol.SPDY_3)
      return a.contains(paramByteString);
    if (paramProtocol == Protocol.HTTP_2)
      return b.contains(paramByteString);
    throw new AssertionError(paramProtocol);
  }

  public final K a(I paramI)
  {
    return new t(paramI.f(), o.a(this.e.f()));
  }

  public final x a(C paramC, long paramLong)
  {
    return this.e.g();
  }

  public final void a()
  {
    this.e.g().close();
  }

  public final void a(C paramC)
  {
    if (this.e != null)
      return;
    this.c.b();
    boolean bool = this.c.c();
    String str1 = b.a(this.c.f().k());
    com.squareup.okhttp.internal.spdy.A localA = this.d;
    Protocol localProtocol = this.d.a();
    com.squareup.okhttp.u localu = paramC.e();
    ArrayList localArrayList = new ArrayList(10 + localu.a());
    localArrayList.add(new d(d.b, paramC.d()));
    localArrayList.add(new d(d.c, b.a(paramC.a())));
    String str2 = m.a(paramC.a());
    int j;
    label222: ByteString localByteString;
    String str3;
    if (Protocol.SPDY_3 == localProtocol)
    {
      localArrayList.add(new d(d.g, str1));
      localArrayList.add(new d(d.f, str2));
      localArrayList.add(new d(d.d, paramC.a().getProtocol()));
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      int i = localu.a();
      j = 0;
      if (j >= i)
        break label511;
      localByteString = ByteString.encodeUtf8(localu.a(j).toLowerCase(Locale.US));
      str3 = localu.b(j);
      if ((!a(localProtocol, localByteString)) && (!localByteString.equals(d.b)) && (!localByteString.equals(d.c)) && (!localByteString.equals(d.d)) && (!localByteString.equals(d.e)) && (!localByteString.equals(d.f)) && (!localByteString.equals(d.g)))
      {
        if (!localLinkedHashSet.add(localByteString))
          break label408;
        localArrayList.add(new d(localByteString, str3));
      }
    }
    label408: label509: 
    while (true)
    {
      j++;
      break label222;
      if (Protocol.HTTP_2 == localProtocol)
      {
        localArrayList.add(new d(d.e, str2));
        break;
      }
      throw new AssertionError();
      for (int k = 0; ; k++)
      {
        if (k >= localArrayList.size())
          break label509;
        if (!((d)localArrayList.get(k)).h.equals(localByteString))
          continue;
        localArrayList.set(k, new d(localByteString, ((d)localArrayList.get(k)).i.utf8() + '\000' + str3));
        break;
      }
    }
    label511: this.e = localA.a(localArrayList, bool, true);
    this.e.e().a(this.c.a.b(), TimeUnit.MILLISECONDS);
  }

  public final void a(u paramu)
  {
    paramu.a(this.e.g());
  }

  public final J b()
  {
    List localList = this.e.d();
    Protocol localProtocol = this.d.a();
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    v localv = new v();
    localv.b(r.c, localProtocol.toString());
    int i = localList.size();
    int j = 0;
    while (j < i)
    {
      ByteString localByteString = ((d)localList.get(j)).h;
      String str = ((d)localList.get(j)).i.utf8();
      Object localObject3 = localObject2;
      int k = 0;
      if (k < str.length())
      {
        int m = str.indexOf(0, k);
        if (m == -1)
          m = str.length();
        Object localObject4 = str.substring(k, m);
        if (localByteString.equals(d.a));
        while (true)
        {
          int n = m + 1;
          localObject1 = localObject4;
          k = n;
          break;
          if (localByteString.equals(d.g))
          {
            localObject3 = localObject4;
            localObject4 = localObject1;
            continue;
          }
          if (!a(localProtocol, localByteString))
            localv.a(localByteString.utf8(), (String)localObject4);
          localObject4 = localObject1;
        }
      }
      j++;
      localObject2 = localObject3;
    }
    if (localObject1 == null)
      throw new ProtocolException("Expected ':status' header not present");
    z localz = z.a((String)localObject2 + " " + localObject1);
    return (J)(J)new J().a(localProtocol).a(localz.b).a(localz.c).a(localv.a());
  }

  public final void c()
  {
  }

  public final boolean d()
  {
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.y
 * JD-Core Version:    0.6.0
 */