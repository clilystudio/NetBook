package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListView;
import com.clilystudio.netbook.ui.BaseLoadingFragment;

public class GameCatListFragment extends BaseLoadingFragment
{
  private ListView a;
  private b b;

  protected final int a()
  {
    return 2130903321;
  }

  protected final void b()
  {
    f();
    new c(this, 0).b(new String[0]);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a.setDividerHeight(0);
    TypedArray localTypedArray = getActivity().getTheme().obtainStyledAttributes(new int[] { 2130771972 });
    int i = localTypedArray.getResourceId(0, 2131427422);
    localTypedArray.recycle();
    FragmentActivity localFragmentActivity = getActivity();
    ListView localListView = this.a;
    int j = localFragmentActivity.getResources().getDimensionPixelSize(2131099926);
    View localView = new View(localFragmentActivity);
    localView.setLayoutParams(new AbsListView.LayoutParams(-2, j));
    localView.setBackgroundResource(i);
    localListView.addHeaderView(localView, null, false);
    this.b = new b(this, LayoutInflater.from(getActivity()));
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(new a(this));
    b();
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.b.b("game_cate");
  }

  public void onResume()
  {
    super.onResume();
    com.umeng.a.b.a("game_cate");
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.a = ((ListView)paramView.findViewById(2131493135));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.GameCatListFragment
 * JD-Core Version:    0.6.0
 */