package com.clilystudio.netbook.reader;

import android.app.Dialog;
import android.content.Intent;
import android.view.MenuItem;
import android.widget.PopupMenu.OnMenuItemClickListener;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.cb;

final class ap
  implements PopupMenu.OnMenuItemClickListener
{
  ap(ReaderActivity paramReaderActivity)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131493931:
    case 2131493932:
    case 2131493933:
    }
    while (true)
    {
      return true;
      ReaderActivity.L(this.a);
      continue;
      Intent localIntent = BookInfoActivity.a(this.a, ReaderActivity.M(this.a));
      this.a.startActivity(localIntent);
      continue;
      new cb(this.a, new aq(this)).a().show();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ap
 * JD-Core Version:    0.6.0
 */