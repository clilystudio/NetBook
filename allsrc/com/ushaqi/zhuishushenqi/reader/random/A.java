package com.ushaqi.zhuishushenqi.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.umeng.a.b;

final class A
  implements DialogInterface.OnClickListener
{
  A(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    b.a(this.a, "random_reader_quit_choice", "quit");
    b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.A
 * JD-Core Version:    0.6.0
 */