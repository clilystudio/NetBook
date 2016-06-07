package com.ushaqi.zhuishushenqi.reader;

final class R
  implements Runnable
{
  R(Reader paramReader, Reader.Type paramType)
  {
  }

  public final void run()
  {
    ae localae = this.a.getListener(this.b);
    if (localae != null)
      localae.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.R
 * JD-Core Version:    0.6.0
 */