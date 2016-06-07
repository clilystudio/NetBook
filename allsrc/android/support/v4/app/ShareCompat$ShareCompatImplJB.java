package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplJB extends ShareCompat.ShareCompatImplICS
{
  public String escapeHtml(CharSequence paramCharSequence)
  {
    return ShareCompatJB.escapeHtml(paramCharSequence);
  }

  boolean shouldAddChooserIntent(MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ShareCompat.ShareCompatImplJB
 * JD-Core Version:    0.6.0
 */