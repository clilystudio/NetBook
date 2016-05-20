package com.clilystudio.app.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class BaseLoadingFragment extends Fragment
{
  private ViewGroup a;
  private View b;
  private View c;
  private View d;
  private View[] e;

  private void a(View paramView)
  {
    int i = 0;
    if (paramView == null);
    while (true)
    {
      return;
      paramView.setVisibility(0);
      View[] arrayOfView = this.e;
      int j = arrayOfView.length;
      while (i < j)
      {
        View localView = arrayOfView[i];
        if (paramView != localView)
          localView.setVisibility(8);
        i++;
      }
    }
  }

  protected abstract int a();

  protected abstract void b();

  public final void c()
  {
    a(this.a);
  }

  public final void d()
  {
    a(this.d);
  }

  public final void e()
  {
    a(this.c);
  }

  public final void f()
  {
    a(this.b);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903109, paramViewGroup, false);
    this.a = ((ViewGroup)localView.findViewById(2131492905));
    this.b = localView.findViewById(2131493102);
    this.c = localView.findViewById(2131493103);
    this.d = localView.findViewById(2131493104);
    LayoutInflater.from(getActivity()).inflate(a(), this.a);
    View[] arrayOfView = new View[4];
    arrayOfView[0] = this.a;
    arrayOfView[1] = this.b;
    arrayOfView[2] = this.c;
    arrayOfView[3] = this.d;
    this.e = arrayOfView;
    this.c.setOnClickListener(new ad(this));
    return localView;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BaseLoadingFragment
 * JD-Core Version:    0.6.2
 */