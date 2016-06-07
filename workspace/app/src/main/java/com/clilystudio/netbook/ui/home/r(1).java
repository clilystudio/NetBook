package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.model.BookShelf;

final class r
  implements DialogInterface.OnClickListener
{
  r(HomeShelfFragment paramHomeShelfFragment, BookShelf paramBookShelf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (this.a.getType())
    {
    case 3:
    default:
    case 1:
    case 0:
    case 2:
    case 4:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (paramInt != 0)
              continue;
            HomeShelfFragment.a(this.b, this.a);
            return;
          }
          while (paramInt != 1);
          HomeShelfFragment.k(this.b);
          return;
          if (paramInt == 0)
          {
            HomeShelfFragment.b(this.b, this.a);
            return;
          }
          if (paramInt == 1)
          {
            HomeShelfFragment.a(this.b, this.a.getBookRecord());
            return;
          }
          if (paramInt == 2)
          {
            HomeShelfFragment.b(this.b, this.a.getBookRecord());
            return;
          }
          if (paramInt == 3)
          {
            HomeShelfFragment.c(this.b, this.a.getBookRecord());
            return;
          }
          if (paramInt != 4)
            continue;
          HomeShelfFragment.c(this.b, this.a);
          return;
        }
        while (paramInt != 5);
        this.b.d();
        return;
        if (paramInt == 0)
        {
          HomeShelfFragment.b(this.b, this.a);
          return;
        }
        if (paramInt != 1)
          continue;
        HomeShelfFragment.c(this.b, this.a);
        return;
      }
      while (paramInt != 2);
      this.b.d();
      return;
      if (paramInt == 0)
      {
        HomeShelfFragment.b(this.b, this.a);
        return;
      }
      if (paramInt == 1)
      {
        HomeShelfFragment.b(this.b, this.a.getAlbum());
        return;
      }
      if (paramInt != 2)
        continue;
      HomeShelfFragment.c(this.b, this.a);
      return;
    }
    while (paramInt != 3);
    this.b.d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.r
 * JD-Core Version:    0.6.0
 */