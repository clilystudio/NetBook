package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.SmartImageView;

final class e
  implements View.OnClickListener
{
  e(d paramd, SmartImageView paramSmartImageView, BookHelpSummary paramBookHelpSummary)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getContext().startActivity(com.clilystudio.netbook.util.e.a(this.a.getContext(), this.b.getAuthor()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.e
 * JD-Core Version:    0.6.0
 */