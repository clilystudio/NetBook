package android.support.v7.internal.view.menu;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.support.v7.app.k;
import android.support.v7.appcompat.R.layout;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;

public final class j
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, v
{
  private MenuBuilder a;
  private android.support.v7.app.j b;
  private f c;

  public j(MenuBuilder paramMenuBuilder)
  {
    this.a = paramMenuBuilder;
  }

  public final void a(IBinder paramIBinder)
  {
    MenuBuilder localMenuBuilder = this.a;
    k localk = new k(localMenuBuilder.d());
    this.c = new f(localk.a(), R.layout.abc_list_menu_item_layout);
    this.c.a(this);
    this.a.a(this.c);
    localk.a(this.c.d(), this);
    View localView = localMenuBuilder.c;
    if (localView != null)
      localk.a(localView);
    while (true)
    {
      localk.a(this);
      this.b = localk.b();
      this.b.setOnDismissListener(this);
      WindowManager.LayoutParams localLayoutParams = this.b.getWindow().getAttributes();
      localLayoutParams.type = 1003;
      localLayoutParams.flags = (0x20000 | localLayoutParams.flags);
      this.b.show();
      return;
      localk.a(localMenuBuilder.b).a(localMenuBuilder.a);
    }
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (((paramBoolean) || (paramMenuBuilder == this.a)) && (this.b != null))
      this.b.dismiss();
  }

  public final boolean a_(MenuBuilder paramMenuBuilder)
  {
    return false;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a((MenuItemImpl)this.c.d().getItem(paramInt), 0);
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.c.a(this.a, true);
  }

  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4))
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        Window localWindow2 = this.b.getWindow();
        if (localWindow2 != null)
        {
          View localView2 = localWindow2.getDecorView();
          if (localView2 != null)
          {
            KeyEvent.DispatcherState localDispatcherState2 = localView2.getKeyDispatcherState();
            if (localDispatcherState2 != null)
            {
              localDispatcherState2.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Window localWindow1 = this.b.getWindow();
        if (localWindow1 != null)
        {
          View localView1 = localWindow1.getDecorView();
          if (localView1 != null)
          {
            KeyEvent.DispatcherState localDispatcherState1 = localView1.getKeyDispatcherState();
            if ((localDispatcherState1 != null) && (localDispatcherState1.isTracking(paramKeyEvent)))
            {
              this.a.a(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    return this.a.performShortcut(paramInt, paramKeyEvent, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.j
 * JD-Core Version:    0.6.0
 */