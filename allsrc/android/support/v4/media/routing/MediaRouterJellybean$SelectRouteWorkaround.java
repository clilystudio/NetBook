package android.support.v4.media.routing;

import android.media.MediaRouter;
import android.media.MediaRouter.RouteInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybean$SelectRouteWorkaround
{
  private Method mSelectRouteIntMethod;

  public MediaRouterJellybean$SelectRouteWorkaround()
  {
    if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 17))
      throw new UnsupportedOperationException();
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = MediaRouter.RouteInfo.class;
      this.mSelectRouteIntMethod = MediaRouter.class.getMethod("selectRouteInt", arrayOfClass);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
  }

  public final void selectRoute(Object paramObject1, int paramInt, Object paramObject2)
  {
    MediaRouter localMediaRouter = (MediaRouter)paramObject1;
    MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)paramObject2;
    if (((0x800000 & localRouteInfo.getSupportedTypes()) != 0) || (this.mSelectRouteIntMethod != null));
    while (true)
    {
      try
      {
        Method localMethod = this.mSelectRouteIntMethod;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        arrayOfObject[1] = localRouteInfo;
        localMethod.invoke(localMediaRouter, arrayOfObject);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route.  Media routing may not work.", localIllegalAccessException);
        localMediaRouter.selectRoute(paramInt, localRouteInfo);
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route.  Media routing may not work.", localInvocationTargetException);
        continue;
      }
      Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work.");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.SelectRouteWorkaround
 * JD-Core Version:    0.6.0
 */