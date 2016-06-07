package m.framework.ui.widget.asyncview;

import java.util.Timer;

class BitmapProcessor$ManagerThread extends Timer
{
  private BitmapProcessor processor;

  public BitmapProcessor$ManagerThread(BitmapProcessor paramBitmapProcessor)
  {
    this.processor = paramBitmapProcessor;
    schedule(new BitmapProcessor.ManagerThread.1(this), 0L, 200L);
  }

  private void scan()
  {
    if (!BitmapProcessor.access$0(this.processor))
      return;
    long l = System.currentTimeMillis();
    int i = 0;
    label17: boolean bool2;
    if (i < BitmapProcessor.access$1(this.processor).length)
    {
      if (BitmapProcessor.access$1(this.processor)[i] != null)
        break label138;
      BitmapProcessor.access$1(this.processor)[i] = new BitmapProcessor.WorkerThread(this.processor);
      BitmapProcessor.access$1(this.processor)[i].setName("worker " + i);
      BitmapProcessor.WorkerThread localWorkerThread = BitmapProcessor.access$1(this.processor)[i];
      if (i != 0)
        break label132;
      bool2 = true;
      label107: BitmapProcessor.WorkerThread.access$0(localWorkerThread, bool2);
      BitmapProcessor.access$1(this.processor)[i].start();
    }
    while (true)
    {
      i++;
      break label17;
      break;
      label132: bool2 = false;
      break label107;
      label138: if (l - BitmapProcessor.WorkerThread.access$1(BitmapProcessor.access$1(this.processor)[i]) <= 20000L)
        continue;
      BitmapProcessor.access$1(this.processor)[i].interrupt();
      boolean bool1 = BitmapProcessor.WorkerThread.access$2(BitmapProcessor.access$1(this.processor)[i]);
      BitmapProcessor.access$1(this.processor)[i] = new BitmapProcessor.WorkerThread(this.processor);
      BitmapProcessor.access$1(this.processor)[i].setName("worker " + i);
      BitmapProcessor.WorkerThread.access$0(BitmapProcessor.access$1(this.processor)[i], bool1);
      BitmapProcessor.access$1(this.processor)[i].start();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.ManagerThread
 * JD-Core Version:    0.6.0
 */