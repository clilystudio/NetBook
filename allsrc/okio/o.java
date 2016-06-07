package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

public final class o
{
  private static final Logger a = Logger.getLogger(o.class.getName());

  public static h a(x paramx)
  {
    if (paramx == null)
      throw new IllegalArgumentException("sink == null");
    return new s(paramx);
  }

  public static i a(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("source == null");
    return new t(paramy);
  }

  public static x a(Socket paramSocket)
  {
    if (paramSocket == null)
      throw new IllegalArgumentException("socket == null");
    a locala = c(paramSocket);
    OutputStream localOutputStream = paramSocket.getOutputStream();
    if (localOutputStream == null)
      throw new IllegalArgumentException("out == null");
    if (locala == null)
      throw new IllegalArgumentException("timeout == null");
    return new b(locala, new p(locala, localOutputStream));
  }

  public static y a(File paramFile)
  {
    if (paramFile == null)
      throw new IllegalArgumentException("file == null");
    return a(new FileInputStream(paramFile), new z());
  }

  private static y a(InputStream paramInputStream, z paramz)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("in == null");
    if (paramz == null)
      throw new IllegalArgumentException("timeout == null");
    return new q(paramz, paramInputStream);
  }

  public static y b(Socket paramSocket)
  {
    if (paramSocket == null)
      throw new IllegalArgumentException("socket == null");
    a locala = c(paramSocket);
    return new c(locala, a(paramSocket.getInputStream(), locala));
  }

  private static a c(Socket paramSocket)
  {
    return new r(paramSocket);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.o
 * JD-Core Version:    0.6.0
 */