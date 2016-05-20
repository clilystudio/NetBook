package com.clilystudio.app.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.BookHelpSummary;
import com.clilystudio.app.netbook.ui.SmartImageView;

final class e
  implements View.OnClickListener
{
  e(d paramd, SmartImageView paramSmartImageView, BookHelpSummary paramBookHelpSummary)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getContext().startActivity(com.clilystudio.app.netbook.util.e.a(this.a.getContext(), this.b.getAuthor()));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.e
 * JD-Core Version:    0.6.2
 */