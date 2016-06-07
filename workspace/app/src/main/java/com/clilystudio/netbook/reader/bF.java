package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.ChineseAllPromRoot.Prom;
import com.clilystudio.netbook.widget.j;

final class bF
  implements View.OnClickListener
{
  private ChineseAllPromRoot a;

  public bF(ReaderMixActivity paramReaderMixActivity, ChineseAllPromRoot paramChineseAllPromRoot)
  {
    this.a = paramChineseAllPromRoot;
  }

  public final void onClick(View paramView)
  {
    if ((this.a != null) && (this.a.getProm() != null))
    {
      String str = this.a.getProm().getLink();
      new j(this.b, str).a();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bF
 * JD-Core Version:    0.6.0
 */