package m.framework.ui.widget.asyncview;

import java.util.TimerTask;

class BitmapProcessor$ManagerThread$1 extends TimerTask
{
  private int counter;

  public void run()
  {
    if (BitmapProcessor.access$0(BitmapProcessor.ManagerThread.access$0(this.this$1)))
    {
      this.counter = (-1 + this.counter);
      if (this.counter <= 0)
      {
        this.counter = 100;
        BitmapProcessor.ManagerThread.access$1(this.this$1);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.ManagerThread.1
 * JD-Core Version:    0.6.0
 */