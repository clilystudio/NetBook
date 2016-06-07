package u.aly;

import android.content.Context;
import android.telephony.TelephonyManager;

public final class ca extends a
{
  private Context a;

  public ca(Context paramContext)
  {
    super("imei");
    this.a = paramContext;
  }

  public final String f()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)this.a.getSystemService("phone");
    try
    {
      if (bs.a(this.a, "android.permission.READ_PHONE_STATE"))
      {
        String str = localTelephonyManager.getDeviceId();
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ca
 * JD-Core Version:    0.6.0
 */