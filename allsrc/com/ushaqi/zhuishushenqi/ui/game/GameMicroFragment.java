package com.ushaqi.zhuishushenqi.ui.game;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.c;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GameGroupItem;
import com.ushaqi.zhuishushenqi.model.GameLayoutRoot.ModuleLayout;
import com.ushaqi.zhuishushenqi.ui.BaseLoadingFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class GameMicroFragment extends BaseLoadingFragment
{
  Timer a;
  TimerTask b;
  int c;
  private RecyclerView d;
  private List<GameLayoutRoot.ModuleLayout> e;
  private GameLayoutRoot.ModuleLayout f;
  private GameMicroFragment.LayoutAdapter g;
  private Game[] h;
  private List<String> i;

  private int h()
  {
    if ((this.f == null) || ((this.f.getGameGroup() == null) && (this.f.getGameGroup().getGames() == null)))
      return 0;
    return this.f.getGameGroup().getGames().size();
  }

  protected final int a()
  {
    return 2130903102;
  }

  protected final void b()
  {
    f();
    new W(this, 0).b(new String[0]);
  }

  public final void g()
  {
    if (this.f == null)
      this.f = new GameLayoutRoot.ModuleLayout();
    this.f.setModule("local");
    this.f.setTitle("我玩过的");
    GameGroupItem localGameGroupItem = new GameGroupItem();
    localGameGroupItem.setName("我玩过的");
    Object localObject = (List)a.k(c.h, "played_game.txt");
    if (localObject == null)
      localObject = new ArrayList();
    localGameGroupItem.setGames((List)localObject);
    this.f.setGameGroup(localGameGroupItem);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setLayoutManager(new LinearLayoutManager(getActivity()));
    this.g = new GameMicroFragment.LayoutAdapter(this);
    this.d.setAdapter(this.g);
    b();
  }

  public void onPause()
  {
    super.onPause();
    b.b("game_micro_layout");
  }

  public void onResume()
  {
    super.onResume();
    if (this.g != null)
    {
      g();
      if (h() != 1)
        break label40;
      this.d.setAdapter(this.g);
    }
    while (true)
    {
      b.a("game_micro_layout");
      return;
      label40: this.g.b();
    }
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.d = ((RecyclerView)paramView.findViewById(2131493133));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.GameMicroFragment
 * JD-Core Version:    0.6.0
 */