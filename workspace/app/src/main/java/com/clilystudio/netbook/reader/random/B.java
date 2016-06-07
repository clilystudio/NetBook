package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.umeng.a.b;

final class B
  implements DialogInterface.OnClickListener
{
  B(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderRandomActivity.e(this.a);
    b.a(this.a, "random_reader_quit_choice", "add_shelf");
    b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.B
 * JD-Core Version:    0.6.0
 */