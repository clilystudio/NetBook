package com.clilystudio.app.netbook.reader;

final class T
  implements Runnable
{
  T(Reader paramReader, Reader.Type paramType)
  {
  }

  public final void run()
  {
    ae localae = this.a.getListener(this.b);
    if (localae != null)
      localae.b();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.T
 * JD-Core Version:    0.6.2
 */