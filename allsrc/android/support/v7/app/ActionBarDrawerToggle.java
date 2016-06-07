package android.support.v7.app;

import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.view.View;

public class ActionBarDrawerToggle
  implements DrawerLayout.DrawerListener
{
  public void onDrawerClosed(View paramView)
  {
  }

  public void onDrawerOpened(View paramView)
  {
  }

  public void onDrawerSlide(View paramView, float paramFloat)
  {
    Math.min(1.0F, Math.max(0.0F, paramFloat));
  }

  public void onDrawerStateChanged(int paramInt)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.ActionBarDrawerToggle
 * JD-Core Version:    0.6.0
 */