package com.clilystudio.app.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.ui.BaseLoadingFragment;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;
import java.util.ArrayList;
import java.util.List;

public class GameRankListFragment extends BaseLoadingFragment
{
  private ScrollLoadListView a;
  private View b;
  private List<Game> c = new ArrayList();
  private al d;
  private am e;
  private BroadcastReceiver f = new aj(this);
  private av g = new ak(this);

  private void g()
  {
    if (!this.c.isEmpty())
    {
      s.a(getActivity(), this.c);
      this.d.notifyDataSetChanged();
    }
  }

  protected final int a()
  {
    return 2130903386;
  }

  protected final void b()
  {
    f();
    this.c.clear();
    this.e = new am(this, (byte)0);
    this.e.b(new String[0]);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.b = LayoutInflater.from(getActivity()).inflate(2130903325, null);
    this.b.setVisibility(8);
    a.a(getActivity(), this.a);
    this.a.addFooterView(this.b);
    this.a.setDividerHeight(0);
    this.d = new al(this, LayoutInflater.from(getActivity()));
    this.a.setAdapter(this.d);
    this.a.setOnItemClickListener(new ai(this));
    b();
  }

  public void onPause()
  {
    super.onPause();
    getActivity().unregisterReceiver(this.f);
    b.a("game_rank_list");
  }

  public void onResume()
  {
    super.onResume();
    getActivity().registerReceiver(this.f, new IntentFilter("update_game_item_status"));
    g();
    b.a("game_rank_list");
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.a = ((ScrollLoadListView)paramView.findViewById(2131493981));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.GameRankListFragment
 * JD-Core Version:    0.6.2
 */