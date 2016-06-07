package butterknife.internal;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class DebouncingOnClickListener
  implements View.OnClickListener
{
  private static final Runnable ENABLE_AGAIN;
  private static boolean enabled = true;

  static
  {
    ENABLE_AGAIN = new DebouncingOnClickListener.1();
  }

  public abstract void doClick(View paramView);

  public final void onClick(View paramView)
  {
    if (enabled)
    {
      enabled = false;
      paramView.post(ENABLE_AGAIN);
      doClick(paramView);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.internal.DebouncingOnClickListener
 * JD-Core Version:    0.6.0
 */