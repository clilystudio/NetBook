package u.aly;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ce extends a
{
  private static final Pattern a = Pattern.compile("UTDID\">([^<]+)");
  private Context b;

  public ce(Context paramContext)
  {
    super("utdid");
    this.b = paramContext;
  }

  private String g()
  {
    File localFile = h();
    if ((localFile == null) || (!localFile.exists()))
      return null;
    while (true)
    {
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        try
        {
          String str1 = bx.a(localFileInputStream);
          if (str1 != null)
          {
            Matcher localMatcher = a.matcher(str1);
            if (localMatcher.find())
            {
              String str3 = localMatcher.group(1);
              str2 = str3;
              return str2;
            }
          }
        }
        finally
        {
          bx.c(localFileInputStream);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      String str2 = null;
    }
  }

  private File h()
  {
    if (!bs.a(this.b, "android.permission.WRITE_EXTERNAL_STORAGE"));
    do
      return null;
    while (!Environment.getExternalStorageState().equals("mounted"));
    File localFile1 = Environment.getExternalStorageDirectory();
    try
    {
      File localFile2 = new File(localFile1.getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
      return localFile2;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final String f()
  {
    return g();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ce
 * JD-Core Version:    0.6.0
 */