package m.framework.utils;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

public class UIHandler
{
  private static Handler handler;

  private static Message getShellMessage(int paramInt, Handler.Callback paramCallback)
  {
    Message localMessage = new Message();
    localMessage.what = paramInt;
    return getShellMessage(localMessage, paramCallback);
  }

  private static Message getShellMessage(Message paramMessage, Handler.Callback paramCallback)
  {
    Message localMessage = new Message();
    localMessage.obj = new Object[] { paramMessage, paramCallback };
    return localMessage;
  }

  private static void handleMessage(Message paramMessage)
  {
    Object[] arrayOfObject = (Object[])paramMessage.obj;
    Message localMessage = (Message)arrayOfObject[0];
    Handler.Callback localCallback = (Handler.Callback)arrayOfObject[1];
    if (localCallback != null)
      localCallback.handleMessage(localMessage);
  }

  public static void prepare()
  {
    if (handler == null)
      handler = new Handler(new UIHandler.1());
  }

  public static boolean sendEmptyMessage(int paramInt, Handler.Callback paramCallback)
  {
    return handler.sendMessage(getShellMessage(paramInt, paramCallback));
  }

  public static boolean sendEmptyMessageAtTime(int paramInt, long paramLong, Handler.Callback paramCallback)
  {
    return handler.sendMessageAtTime(getShellMessage(paramInt, paramCallback), paramLong);
  }

  public static boolean sendEmptyMessageDelayed(int paramInt, long paramLong, Handler.Callback paramCallback)
  {
    return handler.sendMessageDelayed(getShellMessage(paramInt, paramCallback), paramLong);
  }

  public static boolean sendMessage(Message paramMessage, Handler.Callback paramCallback)
  {
    return handler.sendMessage(getShellMessage(paramMessage, paramCallback));
  }

  public static boolean sendMessageAtFrontOfQueue(Message paramMessage, Handler.Callback paramCallback)
  {
    return handler.sendMessageAtFrontOfQueue(getShellMessage(paramMessage, paramCallback));
  }

  public static boolean sendMessageAtTime(Message paramMessage, long paramLong, Handler.Callback paramCallback)
  {
    return handler.sendMessageAtTime(getShellMessage(paramMessage, paramCallback), paramLong);
  }

  public static boolean sendMessageDelayed(Message paramMessage, long paramLong, Handler.Callback paramCallback)
  {
    return handler.sendMessageDelayed(getShellMessage(paramMessage, paramCallback), paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.UIHandler
 * JD-Core Version:    0.6.0
 */