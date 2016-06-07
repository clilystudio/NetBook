package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.util.Vector;
import java.util.WeakHashMap;

public class BitmapProcessor
{
  private static final int CAPACITY = 5;
  private static final int MAX_REQ_TIME = 200;
  private static final int MAX_SIZE = 40;
  private static final int OVERFLOW_SIZE = 50;
  private static BitmapProcessor instance;
  private File cacheDir;
  private WeakHashMap<String, Bitmap> cacheMap = new WeakHashMap();
  private Vector<BitmapProcessor.ImageReq> netReqTPS = new Vector();
  private Vector<BitmapProcessor.ImageReq> reqList = new Vector();
  private boolean work;
  private BitmapProcessor.WorkerThread[] workerList = new BitmapProcessor.WorkerThread[5];

  private BitmapProcessor(String paramString)
  {
    this.cacheDir = new File(paramString);
    if (!this.cacheDir.exists())
      this.cacheDir.mkdirs();
    new BitmapProcessor.ManagerThread(this);
  }

  public static Bitmap getBitmapFromCache(String paramString)
  {
    if (instance == null)
      throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    return (Bitmap)instance.cacheMap.get(paramString);
  }

  public static void prepare(String paramString)
  {
    monitorenter;
    try
    {
      if (instance == null)
        instance = new BitmapProcessor(paramString);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void process(String paramString, BitmapCallback paramBitmapCallback)
  {
    if (instance == null)
      throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    if (paramString == null)
      return;
    BitmapProcessor.ImageReq localImageReq = new BitmapProcessor.ImageReq();
    BitmapProcessor.ImageReq.access$3(localImageReq, paramString);
    BitmapProcessor.ImageReq.access$4(localImageReq, paramBitmapCallback);
    instance.reqList.add(localImageReq);
    if (instance.reqList.size() > 50);
    while (true)
    {
      if (instance.reqList.size() <= 40)
      {
        start();
        return;
      }
      instance.reqList.remove(0);
    }
  }

  public static void start()
  {
    if (instance == null)
      throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    instance.work = true;
  }

  public static void stop()
  {
    int i = 0;
    if (instance != null)
    {
      instance.work = false;
      instance.reqList.clear();
    }
    while (true)
    {
      if (i >= instance.workerList.length)
      {
        instance = null;
        return;
      }
      if (instance.workerList[i] != null)
        instance.workerList[i].interrupt();
      i++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor
 * JD-Core Version:    0.6.0
 */