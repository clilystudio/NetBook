package com.clilystudio.netbook.reader.random;

import butterknife.ButterKnife.Finder;
import com.clilystudio.netbook.widget.SAutoBgButton;

public class ReaderRandomEntranceActivity$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, ReaderRandomEntranceActivity paramReaderRandomEntranceActivity, Object paramObject)
  {
    paramReaderRandomEntranceActivity.mReadRandomBook = ((SAutoBgButton)paramFinder.findRequiredView(paramObject, 2131493156, "field 'mReadRandomBook'"));
  }

  public static void reset(ReaderRandomEntranceActivity paramReaderRandomEntranceActivity)
  {
    paramReaderRandomEntranceActivity.mReadRandomBook = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.ReaderRandomEntranceActivity..ViewInjector
 * JD-Core Version:    0.6.0
 */