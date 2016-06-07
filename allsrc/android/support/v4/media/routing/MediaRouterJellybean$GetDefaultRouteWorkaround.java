package android.support.v4.media.routing;

import android.media.MediaRouter;
import android.os.Build.VERSION;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybean$GetDefaultRouteWorkaround
{
  private Method mGetSystemAudioRouteMethod;

  public MediaRouterJellybean$GetDefaultRouteWorkaround()
  {
    if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 17))
      throw new UnsupportedOperationException();
    try
    {
      this.mGetSystemAudioRouteMethod = MediaRouter.class.getMethod("getSystemAudioRoute", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
  }

  public final Object getDefaultRoute(Object paramObject)
  {
    MediaRouter localMediaRouter = (MediaRouter)paramObject;
    if (this.mGetSystemAudioRouteMethod != null);
    try
    {
      Object localObject = this.mGetSystemAudioRouteMethod.invoke(localMediaRouter, new Object[0]);
      return localObject;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return localMediaRouter.getRouteAt(0);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      label31: break label31;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.GetDefaultRouteWorkaround
 * JD-Core Version:    0.6.0
 */