package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.R
 * JD-Core Version:    0.6.2
 */