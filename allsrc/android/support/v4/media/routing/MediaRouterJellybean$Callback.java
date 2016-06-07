package android.support.v4.media.routing;

public abstract interface MediaRouterJellybean$Callback
{
  public abstract void onRouteAdded(Object paramObject);

  public abstract void onRouteChanged(Object paramObject);

  public abstract void onRouteGrouped(Object paramObject1, Object paramObject2, int paramInt);

  public abstract void onRouteRemoved(Object paramObject);

  public abstract void onRouteSelected(int paramInt, Object paramObject);

  public abstract void onRouteUngrouped(Object paramObject1, Object paramObject2);

  public abstract void onRouteUnselected(int paramInt, Object paramObject);

  public abstract void onRouteVolumeChanged(Object paramObject);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.Callback
 * JD-Core Version:    0.6.0
 */