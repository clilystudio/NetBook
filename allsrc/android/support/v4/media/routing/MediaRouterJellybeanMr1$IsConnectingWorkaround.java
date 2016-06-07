package android.support.v4.media.routing;

import android.media.MediaRouter.RouteInfo;
import android.os.Build.VERSION;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybeanMr1$IsConnectingWorkaround
{
  private Method mGetStatusCodeMethod;
  private int mStatusConnecting;

  public MediaRouterJellybeanMr1$IsConnectingWorkaround()
  {
    if (Build.VERSION.SDK_INT != 17)
      throw new UnsupportedOperationException();
    try
    {
      this.mStatusConnecting = MediaRouter.RouteInfo.class.getField("STATUS_CONNECTING").getInt(null);
      this.mGetStatusCodeMethod = MediaRouter.RouteInfo.class.getMethod("getStatusCode", new Class[0]);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
    }
  }

  public final boolean isConnecting(Object paramObject)
  {
    MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)paramObject;
    if (this.mGetStatusCodeMethod != null);
    try
    {
      int i = ((Integer)this.mGetStatusCodeMethod.invoke(localRouteInfo, new Object[0])).intValue();
      int j = this.mStatusConnecting;
      return i == j;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      label51: break label51;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybeanMr1.IsConnectingWorkaround
 * JD-Core Version:    0.6.0
 */