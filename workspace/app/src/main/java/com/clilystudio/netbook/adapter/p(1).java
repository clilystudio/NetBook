package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.e;

final class p
  implements View.OnClickListener
{
  p(o paramo, SmartImageView paramSmartImageView, GirlTopicSummary paramGirlTopicSummary)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getContext().startActivity(e.a(this.a.getContext(), this.b.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.p
 * JD-Core Version:    0.6.0
 */