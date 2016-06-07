package com.clilystudio.netbook.reader.txt;

import java.util.List;

final class P
  implements Runnable
{
  P(ScanTxtFileActivity paramScanTxtFileActivity)
  {
  }

  public final void run()
  {
    ScanTxtFileActivity.a(this.a).a(ScanTxtFileActivity.b(this.a));
    ScanTxtFileActivity.a(this.a, ScanTxtFileActivity.b(this.a).size());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.P
 * JD-Core Version:    0.6.0
 */