package com.clilystudio.app.netbook.ui;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.a.b;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import com.clilystudio.app.netbook.c;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.model.TxtFileObject;
import java.io.File;

final class cu
  implements b
{
  cu(ct paramct)
  {
  }

  public final void a(y paramy, v paramv)
  {
    byte[] arrayOfByte = new byte[paramv.c()];
    paramv.a(arrayOfByte);
    String str = this.a.b.b[0];
    File localFile = new File(a.J(c.g), str);
    if (this.a.a[0] == null)
    {
      WifiActivity.a(this.a.b.c, localFile);
      this.a.a[0] = Boolean.valueOf(false);
    }
    WifiActivity.a(this.a.b.c, localFile, arrayOfByte);
    TxtFileObject.add(new BookFile(localFile));
    cs localcs = this.a.b;
    localcs.a += paramv.c();
    paramv.j();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cu
 * JD-Core Version:    0.6.2
 */