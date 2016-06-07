package android.support.v7.app;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.BuilderExtender;

public class NotificationCompat$Builder extends android.support.v4.app.NotificationCompat.Builder
{
  public NotificationCompat$Builder(Context paramContext)
  {
    super(paramContext);
  }

  protected NotificationCompat.BuilderExtender getExtender()
  {
    if (Build.VERSION.SDK_INT >= 21)
      return new E(0);
    if (Build.VERSION.SDK_INT >= 16)
      return new D(0);
    if (Build.VERSION.SDK_INT >= 14)
      return new C(0);
    return super.getExtender();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.NotificationCompat.Builder
 * JD-Core Version:    0.6.0
 */