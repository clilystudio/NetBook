package com.ushaqi.zhuishushenqi.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.BookHelpSummary;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;

final class e
  implements View.OnClickListener
{
  e(d paramd, SmartImageView paramSmartImageView, BookHelpSummary paramBookHelpSummary)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getContext().startActivity(com.ushaqi.zhuishushenqi.util.e.a(this.a.getContext(), this.b.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.e
 * JD-Core Version:    0.6.0
 */