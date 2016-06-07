package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;

public final class j
{
  public static final j a = new j(new k(), 0);
  private final Map<String, Set<ByteString>> b;

  private j(k paramk)
  {
    this.b = l.a(k.a(paramk));
  }

  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate))
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    return "sha1/" + a((X509Certificate)paramCertificate).base64();
  }

  private static ByteString a(X509Certificate paramX509Certificate)
  {
    return l.a(ByteString.of(paramX509Certificate.getPublicKey().getEncoded()));
  }

  public final void a(String paramString, List<Certificate> paramList)
  {
    Set localSet1 = (Set)this.b.get(paramString);
    int i = paramString.indexOf('.');
    if (i != paramString.lastIndexOf('.'));
    for (Set localSet2 = (Set)this.b.get("*." + paramString.substring(i + 1)); ; localSet2 = null)
    {
      Object localObject;
      if (localSet1 == null)
      {
        localObject = null;
        if (localSet2 != null);
      }
      while (localObject == null)
      {
        return;
        if ((localSet1 != null) && (localSet2 != null))
        {
          LinkedHashSet localLinkedHashSet = new LinkedHashSet();
          localLinkedHashSet.addAll(localSet1);
          localLinkedHashSet.addAll(localSet2);
          localObject = localLinkedHashSet;
          continue;
        }
        if (localSet1 != null)
        {
          localObject = localSet1;
          continue;
        }
        localObject = localSet2;
      }
      int j = paramList.size();
      for (int k = 0; ; k++)
      {
        if (k >= j)
          break label197;
        if (((Set)localObject).contains(a((X509Certificate)paramList.get(k))))
          break;
      }
      label197: StringBuilder localStringBuilder = new StringBuilder("Certificate pinning failure!").append("\n  Peer certificate chain:");
      int m = paramList.size();
      for (int n = 0; n < m; n++)
      {
        X509Certificate localX509Certificate = (X509Certificate)paramList.get(n);
        localStringBuilder.append("\n    ").append(a(localX509Certificate)).append(": ").append(localX509Certificate.getSubjectDN().getName());
      }
      localStringBuilder.append("\n  Pinned certificates for ").append(paramString).append(":");
      Iterator localIterator = ((Set)localObject).iterator();
      while (localIterator.hasNext())
      {
        ByteString localByteString = (ByteString)localIterator.next();
        localStringBuilder.append("\n    sha1/").append(localByteString.base64());
      }
      throw new SSLPeerUnverifiedException(localStringBuilder.toString());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.j
 * JD-Core Version:    0.6.0
 */