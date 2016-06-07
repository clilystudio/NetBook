package com.alipay.sdk.b;

import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public final class c
{
  public Header[] a = null;
  public String b = null;
  public String c = null;

  public final ArrayList<BasicHeader> a()
  {
    ArrayList localArrayList;
    if ((this.a == null) || (this.a.length == 0))
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      localArrayList = new ArrayList();
      for (Header localHeader : this.a)
        localArrayList.add(new BasicHeader(localHeader.getName(), localHeader.getValue()));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.b.c
 * JD-Core Version:    0.6.0
 */