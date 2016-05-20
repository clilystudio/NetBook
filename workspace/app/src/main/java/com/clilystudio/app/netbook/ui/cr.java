package com.clilystudio.app.netbook.ui;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.a.k;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.model.TxtFileObject;
import java.io.File;
import java.util.Iterator;
import org.apache.http.NameValuePair;

final class cr
  implements r
{
  cr(WifiActivity paramWifiActivity)
  {
  }

  public final void a(h paramh, l paraml)
  {
    k localk = (k)paramh.b_();
    Object localObject1 = null;
    Iterator localIterator = localk.b().iterator();
    NameValuePair localNameValuePair;
    if (localIterator.hasNext())
    {
      localNameValuePair = (NameValuePair)localIterator.next();
      if (!"file_name".equals(localNameValuePair.getName()))
        break label114;
    }
    label114: for (Object localObject2 = localNameValuePair.getValue(); ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      File localFile = a.I(localObject1);
      if (localFile != null)
      {
        TxtFileObject.remove(new BookFile(localFile));
        localFile.delete();
      }
      paraml.a("finish");
      return;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cr
 * JD-Core Version:    0.6.2
 */