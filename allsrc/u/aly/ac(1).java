package u.aly;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;

public class ac extends am
  implements cx
{
  public ac()
  {
    a(System.currentTimeMillis());
    a(an.a);
  }

  public ac(String paramString)
  {
    this();
    a(paramString);
  }

  public ac(Throwable paramThrowable)
  {
    this();
    a(a(paramThrowable));
  }

  private static String a(Throwable paramThrowable)
  {
    String str = null;
    if (paramThrowable == null)
      return null;
    while (true)
    {
      PrintWriter localPrintWriter;
      try
      {
        StringWriter localStringWriter = new StringWriter();
        localPrintWriter = new PrintWriter(localStringWriter);
        paramThrowable.printStackTrace(localPrintWriter);
        localObject = paramThrowable.getCause();
        str = null;
        if (localObject == null)
        {
          str = localStringWriter.toString();
          localPrintWriter.close();
          localStringWriter.close();
          return str;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return str;
      }
      ((Throwable)localObject).printStackTrace(localPrintWriter);
      Throwable localThrowable = ((Throwable)localObject).getCause();
      Object localObject = localThrowable;
    }
  }

  public ac a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (an localan = an.a; ; localan = an.b)
    {
      a(localan);
      return this;
    }
  }

  public void a(bf parambf, String paramString)
  {
    Iterator localIterator;
    av localav;
    if (parambf.s() > 0)
    {
      localIterator = parambf.u().iterator();
      if (localIterator.hasNext());
    }
    else
    {
      localav = null;
    }
    while (true)
    {
      if (localav == null)
      {
        localav = new av();
        localav.a(paramString);
        parambf.a(localav);
      }
      localav.a(this);
      return;
      localav = (av)localIterator.next();
      if (!paramString.equals(localav.c()))
        break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ac
 * JD-Core Version:    0.6.0
 */