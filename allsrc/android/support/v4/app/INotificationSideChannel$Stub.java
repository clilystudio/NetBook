package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class INotificationSideChannel$Stub extends Binder
  implements INotificationSideChannel
{
  private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
  static final int TRANSACTION_cancel = 2;
  static final int TRANSACTION_cancelAll = 3;
  static final int TRANSACTION_notify = 1;

  public INotificationSideChannel$Stub()
  {
    attachInterface(this, "android.support.v4.app.INotificationSideChannel");
  }

  public static INotificationSideChannel asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
    if ((localIInterface != null) && ((localIInterface instanceof INotificationSideChannel)))
      return (INotificationSideChannel)localIInterface;
    return new INotificationSideChannel.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("android.support.v4.app.INotificationSideChannel");
      return true;
    case 1:
      paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
      String str1 = paramParcel1.readString();
      int i = paramParcel1.readInt();
      String str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Notification localNotification = (Notification)Notification.CREATOR.createFromParcel(paramParcel1); ; localNotification = null)
      {
        notify(str1, i, str2, localNotification);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
      cancel(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
    cancelAll(paramParcel1.readString());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.INotificationSideChannel.Stub
 * JD-Core Version:    0.6.0
 */