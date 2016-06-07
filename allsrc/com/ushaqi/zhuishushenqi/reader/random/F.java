package com.ushaqi.zhuishushenqi.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.reader.o;

final class F extends BroadcastReceiver
{
  F(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    o[] arrayOfo = ReaderRandomActivity.i(this.a);
    int i = arrayOfo.length;
    for (int j = 0; j < i; j++)
      arrayOfo[j].k();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.F
 * JD-Core Version:    0.6.0
 */