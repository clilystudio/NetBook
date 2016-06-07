package okio;

import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

final class r extends a
{
  r(Socket paramSocket)
  {
  }

  protected final void a()
  {
    try
    {
      this.b.close();
      return;
    }
    catch (Exception localException)
    {
      o.a().log(Level.WARNING, "Failed to close timed out socket " + this.b, localException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.r
 * JD-Core Version:    0.6.0
 */