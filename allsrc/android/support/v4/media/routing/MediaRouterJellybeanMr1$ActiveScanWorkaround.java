package android.support.v4.media.routing;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybeanMr1$ActiveScanWorkaround
  implements Runnable
{
  private static final int WIFI_DISPLAY_SCAN_INTERVAL = 15000;
  private boolean mActivelyScanningWifiDisplays;
  private final DisplayManager mDisplayManager;
  private final Handler mHandler;
  private Method mScanWifiDisplaysMethod;

  public MediaRouterJellybeanMr1$ActiveScanWorkaround(Context paramContext, Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT != 17)
      throw new UnsupportedOperationException();
    this.mDisplayManager = ((DisplayManager)paramContext.getSystemService("display"));
    this.mHandler = paramHandler;
    try
    {
      this.mScanWifiDisplaysMethod = DisplayManager.class.getMethod("scanWifiDisplays", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
  }

  public final void run()
  {
    if (this.mActivelyScanningWifiDisplays);
    try
    {
      this.mScanWifiDisplaysMethod.invoke(this.mDisplayManager, new Object[0]);
      this.mHandler.postDelayed(this, 15000L);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", localInvocationTargetException);
    }
  }

  public final void setActiveScanRouteTypes(int paramInt)
  {
    if ((paramInt & 0x2) != 0)
      if (!this.mActivelyScanningWifiDisplays)
      {
        if (this.mScanWifiDisplaysMethod == null)
          break label35;
        this.mActivelyScanningWifiDisplays = true;
        this.mHandler.post(this);
      }
    label35: 
    do
    {
      return;
      Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device.");
      return;
    }
    while (!this.mActivelyScanningWifiDisplays);
    this.mActivelyScanningWifiDisplays = false;
    this.mHandler.removeCallbacks(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybeanMr1.ActiveScanWorkaround
 * JD-Core Version:    0.6.0
 */