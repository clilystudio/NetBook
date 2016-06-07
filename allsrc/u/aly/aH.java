package u.aly;

import android.content.Context;
import android.provider.Settings.Secure;

public final class aH extends a
{
  private Context a;

  public aH(Context paramContext)
  {
    super("android_id");
    this.a = paramContext;
  }

  public final String f()
  {
    try
    {
      String str = Settings.Secure.getString(this.a.getContentResolver(), "android_id");
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.aH
 * JD-Core Version:    0.6.0
 */