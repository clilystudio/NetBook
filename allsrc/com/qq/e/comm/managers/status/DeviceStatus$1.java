package com.qq.e.comm.managers.status;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

class DeviceStatus$1
  implements LocationListener
{
  public void onLocationChanged(Location paramLocation)
  {
    try
    {
      DeviceStatus.a(this.b, paramLocation.getLatitude());
      DeviceStatus.b(this.b, paramLocation.getLongitude());
      this.a.removeUpdates(this);
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.status.DeviceStatus.1
 * JD-Core Version:    0.6.0
 */