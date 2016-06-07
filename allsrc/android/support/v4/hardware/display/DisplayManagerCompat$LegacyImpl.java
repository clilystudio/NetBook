package android.support.v4.hardware.display;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

class DisplayManagerCompat$LegacyImpl extends DisplayManagerCompat
{
  private final WindowManager mWindowManager;

  public DisplayManagerCompat$LegacyImpl(Context paramContext)
  {
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
  }

  public Display getDisplay(int paramInt)
  {
    Display localDisplay = this.mWindowManager.getDefaultDisplay();
    if (localDisplay.getDisplayId() == paramInt)
      return localDisplay;
    return null;
  }

  public Display[] getDisplays()
  {
    Display[] arrayOfDisplay = new Display[1];
    arrayOfDisplay[0] = this.mWindowManager.getDefaultDisplay();
    return arrayOfDisplay;
  }

  public Display[] getDisplays(String paramString)
  {
    if (paramString == null)
      return getDisplays();
    return new Display[0];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.hardware.display.DisplayManagerCompat.LegacyImpl
 * JD-Core Version:    0.6.0
 */