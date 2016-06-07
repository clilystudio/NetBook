package com.alipay.android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IAlixPay$Stub extends Binder
  implements IAlixPay
{
  private static final String DESCRIPTOR = "com.alipay.android.app.IAlixPay";
  static final int TRANSACTION_Pay = 1;
  static final int TRANSACTION_prePay = 5;
  static final int TRANSACTION_registerCallback = 3;
  static final int TRANSACTION_test = 2;
  static final int TRANSACTION_unregisterCallback = 4;

  public IAlixPay$Stub()
  {
    attachInterface(this, "com.alipay.android.app.IAlixPay");
  }

  public static IAlixPay asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.app.IAlixPay");
    if ((localIInterface != null) && ((localIInterface instanceof IAlixPay)))
      return (IAlixPay)localIInterface;
    return new a(paramIBinder);
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
      paramParcel2.writeString("com.alipay.android.app.IAlixPay");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
      String str3 = Pay(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
      String str2 = test();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
      registerCallback(IRemoteServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
      unregisterCallback(IRemoteServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5:
    }
    paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
    String str1 = prePay(paramParcel1.readString());
    paramParcel2.writeNoException();
    paramParcel2.writeString(str1);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IAlixPay.Stub
 * JD-Core Version:    0.6.0
 */