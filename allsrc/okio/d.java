package okio;

final class d extends Thread
{
  public d()
  {
    super("Okio Watchdog");
    setDaemon(true);
  }

  public final void run()
  {
    while (true)
      try
      {
        a locala = a.e();
        if (locala == null)
          continue;
        locala.a();
        continue;
      }
      catch (InterruptedException localInterruptedException)
      {
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.d
 * JD-Core Version:    0.6.0
 */