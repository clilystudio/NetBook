package com.ushaqi.zhuishushenqi.reader.txt;

import android.widget.ProgressBar;
import com.ushaqi.zhuishushenqi.a.e;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.Q
 * JD-Core Version:    0.6.0
 */