package com.clilystudio.app.netbook.reader.txt;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.P
 * JD-Core Version:    0.6.2
 */