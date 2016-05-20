package com.clilystudio.app.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.ChineseAllPromRoot;
import com.clilystudio.app.netbook.model.ChineseAllPromRoot.Prom;
import com.clilystudio.app.netbook.widget.j;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bF
 * JD-Core Version:    0.6.2
 */