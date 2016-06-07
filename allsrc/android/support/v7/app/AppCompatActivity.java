package android.support.v7.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NavUtils;
import android.support.v4.app.TaskStackBuilder;
import android.support.v4.app.TaskStackBuilder.SupportParentable;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class AppCompatActivity extends FragmentActivity
  implements TaskStackBuilder.SupportParentable, l
{
  private m a;

  private boolean b()
  {
    Intent localIntent = getSupportParentActivityIntent();
    if (localIntent != null)
    {
      if (NavUtils.shouldUpRecreateTask(this, localIntent))
      {
        TaskStackBuilder localTaskStackBuilder = TaskStackBuilder.create(this);
        localTaskStackBuilder.addParentStack(this);
        localTaskStackBuilder.startActivities();
      }
      while (true)
      {
        try
        {
          ActivityCompat.finishAffinity(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        NavUtils.navigateUpTo(this, localIntent);
      }
    }
    return false;
  }

  private m c()
  {
    if (this.a == null)
      this.a = m.a(this, this);
    return this.a;
  }

  public final a a()
  {
    return c().a();
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    c().b(paramView, paramLayoutParams);
  }

  public MenuInflater getMenuInflater()
  {
    return c().b();
  }

  public Intent getSupportParentActivityIntent()
  {
    return NavUtils.getParentActivityIntent(this);
  }

  public void invalidateOptionsMenu()
  {
    c().f();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    c().a(paramConfiguration);
  }

  public void onContentChanged()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    c().h();
    super.onCreate(paramBundle);
    c().a(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    c().g();
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    a locala = c().a();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((0x4 & locala.b()) != 0))
      return b();
    return false;
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    c().c();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    c().e();
  }

  protected void onStop()
  {
    super.onStop();
    c().d();
  }

  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    c().a(paramCharSequence);
  }

  public void setContentView(int paramInt)
  {
    c().a(paramInt);
  }

  public void setContentView(View paramView)
  {
    c().a(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    c().a(paramView, paramLayoutParams);
  }

  public void supportInvalidateOptionsMenu()
  {
    c().f();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.AppCompatActivity
 * JD-Core Version:    0.6.0
 */