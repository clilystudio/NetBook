package cn.sharesdk.framework;

import android.os.Handler.Callback;
import android.os.Message;
import com.mob.tools.b.j;
import java.util.HashMap;

public class ReflectablePlatformActionListener
  implements PlatformActionListener
{
  private int a;
  private Handler.Callback b;
  private int c;
  private Handler.Callback d;
  private int e;
  private Handler.Callback f;

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    if (this.f != null)
    {
      Message localMessage = new Message();
      localMessage.what = this.e;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramPlatform;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      localMessage.obj = arrayOfObject;
      j.a(localMessage, this.f);
    }
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    if (this.b != null)
    {
      Message localMessage = new Message();
      localMessage.what = this.a;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramPlatform;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      arrayOfObject[2] = paramHashMap;
      localMessage.obj = arrayOfObject;
      j.a(localMessage, this.b);
    }
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    if (this.d != null)
    {
      Message localMessage = new Message();
      localMessage.what = this.c;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramPlatform;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      arrayOfObject[2] = paramThrowable;
      localMessage.obj = arrayOfObject;
      j.a(localMessage, this.d);
    }
  }

  public void setOnCancelCallback(int paramInt, Handler.Callback paramCallback)
  {
    this.e = paramInt;
    this.f = paramCallback;
  }

  public void setOnCompleteCallback(int paramInt, Handler.Callback paramCallback)
  {
    this.a = paramInt;
    this.b = paramCallback;
  }

  public void setOnErrorCallback(int paramInt, Handler.Callback paramCallback)
  {
    this.c = paramInt;
    this.d = paramCallback;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.ReflectablePlatformActionListener
 * JD-Core Version:    0.6.0
 */