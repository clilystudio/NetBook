package m.framework.ui.widget.asyncview;

import java.io.FilterInputStream;
import java.io.InputStream;

class BitmapProcessor$PatchInputStream extends FilterInputStream
{
  InputStream in;

  protected BitmapProcessor$PatchInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
    this.in = paramInputStream;
  }

  public long skip(long paramLong)
  {
    long l1 = 0L;
    while (true)
    {
      if (l1 >= paramLong);
      long l2;
      do
      {
        return l1;
        l2 = this.in.skip(paramLong - l1);
      }
      while (l2 == 0L);
      l1 += l2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.PatchInputStream
 * JD-Core Version:    0.6.0
 */