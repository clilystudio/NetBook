package com.jeremyfeinstein.slidingmenu.lib.app;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListView;

public class SlidingListActivity extends ListActivity
{
  private a a;

  public View findViewById(int paramInt)
  {
    View localView = super.findViewById(paramInt);
    if (localView != null)
      return localView;
    return this.a.a(paramInt);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = new a(this);
    this.a.a();
    ListView localListView = new ListView(this);
    localListView.setId(16908298);
    setContentView(localListView);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = this.a.b(paramInt);
    if (bool)
      return bool;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    this.a.a(paramBundle);
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.a.b(paramBundle);
  }

  public void setBehindContentView(View paramView)
  {
    new ViewGroup.LayoutParams(-1, -1);
    this.a.b(paramView);
  }

  public void setContentView(int paramInt)
  {
    setContentView(getLayoutInflater().inflate(paramInt, null));
  }

  public void setContentView(View paramView)
  {
    setContentView(paramView, new ViewGroup.LayoutParams(-1, -1));
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    this.a.a(paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.app.SlidingListActivity
 * JD-Core Version:    0.6.0
 */