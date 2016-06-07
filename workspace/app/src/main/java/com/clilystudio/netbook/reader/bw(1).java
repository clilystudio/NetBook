package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.TocSummary;
import uk.me.lewisdeane.ldialogs.h;

final class bw
  implements View.OnClickListener
{
  bw(ReaderMenuFragment paramReaderMenuFragment, Activity paramActivity, TocSummary paramTocSummary)
  {
  }

  public final void onClick(View paramView)
  {
    h localh = new h(this.a);
    localh.e = "更换来源将会删除之前的预读章节，是否继续？";
    localh.a("更换", new bx(this)).b("取消", null).b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bw
 * JD-Core Version:    0.6.0
 */