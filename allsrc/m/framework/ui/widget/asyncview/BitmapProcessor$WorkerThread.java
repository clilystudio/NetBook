package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Vector;
import java.util.WeakHashMap;
import m.framework.network.NetworkHelper;
import m.framework.utils.Data;
import m.framework.utils.Utils;

class BitmapProcessor$WorkerThread extends Thread
{
  private BitmapProcessor.ImageReq curReq;
  private long lastReport;
  private boolean localType;
  private BitmapProcessor processor;

  public BitmapProcessor$WorkerThread(BitmapProcessor paramBitmapProcessor)
  {
    this.processor = paramBitmapProcessor;
    this.lastReport = System.currentTimeMillis();
  }

  private void doLocalTask()
  {
    int i = BitmapProcessor.access$2(this.processor).size();
    if (i > 0);
    for (BitmapProcessor.ImageReq localImageReq = (BitmapProcessor.ImageReq)BitmapProcessor.access$2(this.processor).remove(i - 1); ; localImageReq = null)
    {
      if (localImageReq != null)
      {
        Bitmap localBitmap = (Bitmap)BitmapProcessor.access$3(this.processor).get(BitmapProcessor.ImageReq.access$0(localImageReq));
        if (localBitmap != null)
        {
          this.curReq = localImageReq;
          BitmapProcessor.ImageReq.access$1(this.curReq, this);
          BitmapProcessor.ImageReq.access$2(localImageReq, localBitmap);
          this.lastReport = System.currentTimeMillis();
          return;
        }
        if (new File(BitmapProcessor.access$4(this.processor), Data.MD5(BitmapProcessor.ImageReq.access$0(localImageReq))).exists())
        {
          doTask(localImageReq);
          this.lastReport = System.currentTimeMillis();
          return;
        }
        if (BitmapProcessor.access$5(this.processor).size() > 40);
        while (true)
        {
          if (BitmapProcessor.access$2(this.processor).size() <= 0)
          {
            BitmapProcessor.access$5(this.processor).remove(0);
            BitmapProcessor.access$5(this.processor).add(localImageReq);
            break;
          }
          BitmapProcessor.access$2(this.processor).remove(0);
        }
      }
      this.lastReport = System.currentTimeMillis();
      Thread.sleep(30L);
      return;
    }
  }

  private void doNetworkTask()
  {
    int i = BitmapProcessor.access$5(this.processor).size();
    BitmapProcessor.ImageReq localImageReq1 = null;
    if (i > 0)
      localImageReq1 = (BitmapProcessor.ImageReq)BitmapProcessor.access$5(this.processor).remove(0);
    int j;
    if (localImageReq1 == null)
    {
      j = BitmapProcessor.access$2(this.processor).size();
      if (j <= 0);
    }
    for (BitmapProcessor.ImageReq localImageReq2 = (BitmapProcessor.ImageReq)BitmapProcessor.access$2(this.processor).remove(j - 1); ; localImageReq2 = localImageReq1)
    {
      if (localImageReq2 != null)
      {
        Bitmap localBitmap = (Bitmap)BitmapProcessor.access$3(this.processor).get(BitmapProcessor.ImageReq.access$0(localImageReq2));
        if (localBitmap != null)
        {
          this.curReq = localImageReq2;
          BitmapProcessor.ImageReq.access$1(this.curReq, this);
          BitmapProcessor.ImageReq.access$2(localImageReq2, localBitmap);
        }
        while (true)
        {
          this.lastReport = System.currentTimeMillis();
          return;
          doTask(localImageReq2);
        }
      }
      this.lastReport = System.currentTimeMillis();
      Thread.sleep(30L);
      return;
    }
  }

  private void doTask(BitmapProcessor.ImageReq paramImageReq)
  {
    this.curReq = paramImageReq;
    BitmapProcessor.ImageReq.access$1(this.curReq, this);
    File localFile = new File(BitmapProcessor.access$4(this.processor), Data.MD5(BitmapProcessor.ImageReq.access$0(paramImageReq)));
    Bitmap localBitmap;
    if (localFile.exists())
    {
      localBitmap = Utils.getBitmap(localFile.getAbsolutePath());
      if (localBitmap != null)
      {
        BitmapProcessor.access$3(this.processor).put(BitmapProcessor.ImageReq.access$0(paramImageReq), localBitmap);
        BitmapProcessor.ImageReq.access$2(paramImageReq, localBitmap);
      }
      this.curReq = null;
    }
    while (true)
    {
      if (localBitmap != null)
      {
        BitmapProcessor.access$3(this.processor).put(BitmapProcessor.ImageReq.access$0(paramImageReq), localBitmap);
        BitmapProcessor.ImageReq.access$2(paramImageReq, localBitmap);
      }
      this.curReq = null;
      return;
      new NetworkHelper().download(BitmapProcessor.ImageReq.access$0(paramImageReq), new BitmapProcessor.WorkerThread.1(this, localFile, paramImageReq));
      localBitmap = null;
    }
  }

  private void saveFile(Bitmap paramBitmap, File paramFile)
  {
    try
    {
      if (paramFile.exists())
        paramFile.delete();
      if (!paramFile.getParentFile().exists())
        paramFile.getParentFile().mkdirs();
      paramFile.createNewFile();
      Bitmap.CompressFormat localCompressFormat = Bitmap.CompressFormat.JPEG;
      String str = Utils.getFileMime(paramFile.getAbsolutePath());
      if ((str != null) && ((str.endsWith("png")) || (str.endsWith("gif"))))
        localCompressFormat = Bitmap.CompressFormat.PNG;
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
      paramBitmap.compress(localCompressFormat, 100, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (!paramFile.exists());
      paramFile.delete();
    }
  }

  public void interrupt()
  {
    try
    {
      super.interrupt();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void run()
  {
    while (true)
    {
      if (!BitmapProcessor.access$0(this.processor))
        return;
      try
      {
        if (!this.localType)
          break label33;
        doLocalTask();
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
      continue;
      label33: doNetworkTask();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.WorkerThread
 * JD-Core Version:    0.6.0
 */