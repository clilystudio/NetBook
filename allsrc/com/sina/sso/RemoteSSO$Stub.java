package com.sina.sso;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class RemoteSSO$Stub extends Binder
  implements RemoteSSO
{
  private static final String DESCRIPTOR = "com.sina.sso.RemoteSSO";
  static final int TRANSACTION_getActivityName = 2;
  static final int TRANSACTION_getPackageName = 1;

  public RemoteSSO$Stub()
  {
    attachInterface(this, "com.sina.sso.RemoteSSO");
  }

  public static RemoteSSO asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.sina.sso.RemoteSSO");
    if ((localIInterface != null) && ((localIInterface instanceof RemoteSSO)))
      return (RemoteSSO)localIInterface;
    return new RemoteSSO.Stub.Proxy(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.sina.sso.RemoteSSO");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.sina.sso.RemoteSSO");
      String str2 = getPackageName();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 2:
    }
    paramParcel1.enforceInterface("com.sina.sso.RemoteSSO");
    String str1 = getActivityName();
    paramParcel2.writeNoException();
    paramParcel2.writeString(str1);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.sso.RemoteSSO.Stub
 * JD-Core Version:    0.6.0
 */