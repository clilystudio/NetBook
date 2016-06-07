package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.RelateBookRoot;

final class bA
  implements View.OnClickListener
{
  bA(RelateBooksFragment paramRelateBooksFragment, RelateBookRoot paramRelateBookRoot)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = RelateBookListActivity.a(this.b.getActivity(), this.a, "你可能感兴趣", RelateBooksFragment.a(this.b));
    this.b.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bA
 * JD-Core Version:    0.6.0
 */