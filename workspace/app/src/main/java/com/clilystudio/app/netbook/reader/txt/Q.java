package com.clilystudio.app.netbook.reader.txt;

import android.widget.ProgressBar;
import com.clilystudio.app.netbook.a.e;

public final class Q extends e<Void, Void, Void>
{
  public Q(ScanTxtFileActivity paramScanTxtFileActivity)
  {
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    this.a.mPbLoading.setVisibility(0);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.Q
 * JD-Core Version:    0.6.2
 */