package com.ushaqi.zhuishushenqi.reader;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bW
  implements View.OnClickListener
{
  bW(ReaderResourceFragment paramReaderResourceFragment)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = LocalChapterListActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a));
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bW
 * JD-Core Version:    0.6.0
 */