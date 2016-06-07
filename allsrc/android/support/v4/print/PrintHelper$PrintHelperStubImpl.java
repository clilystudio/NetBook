package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

final class PrintHelper$PrintHelperStubImpl
  implements PrintHelper.PrintHelperVersionImpl
{
  int mColorMode = 2;
  int mOrientation = 1;
  int mScaleMode = 2;

  public final int getColorMode()
  {
    return this.mColorMode;
  }

  public final int getOrientation()
  {
    return this.mOrientation;
  }

  public final int getScaleMode()
  {
    return this.mScaleMode;
  }

  public final void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
  }

  public final void printBitmap(String paramString, Uri paramUri, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
  }

  public final void setColorMode(int paramInt)
  {
    this.mColorMode = paramInt;
  }

  public final void setOrientation(int paramInt)
  {
    this.mOrientation = paramInt;
  }

  public final void setScaleMode(int paramInt)
  {
    this.mScaleMode = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperStubImpl
 * JD-Core Version:    0.6.0
 */