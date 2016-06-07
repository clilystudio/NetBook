package com.ushaqi.zhuishushenqi.ui.game;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ListView;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.adapter.GameGiftGroupAdapter;
import com.ushaqi.zhuishushenqi.model.GameGiftGroup;
import com.ushaqi.zhuishushenqi.ui.BaseLoadingFragment;
import java.util.ArrayList;
import java.util.List;

public class GameGiftFragment extends BaseLoadingFragment
{
  private ListView a;
  private GameGiftGroupAdapter b;
  private List<GameGiftGroup> c;
  private BroadcastReceiver d = new u(this);

  private void g()
  {
    if (this.c != null)
    {
      ArrayList localArrayList = new ArrayList();
      for (int i = 0; i < this.c.size(); i++)
      {
        GameGiftGroup localGameGiftGroup = (GameGiftGroup)this.c.get(i);
        if (localGameGiftGroup.getType() != 0)
          continue;
        localArrayList.add(localGameGiftGroup.getGame());
      }
      ao.a(getActivity(), localArrayList);
      this.b.notifyDataSetChanged();
    }
  }

  protected final int a()
  {
    return 2130903321;
  }

  protected final void b()
  {
    f();
    new v(this, 0).b(new String[0]);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a.setDividerHeight(0);
    this.b = new GameGiftGroupAdapter(getActivity());
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(new t(this));
    b();
  }

  public void onPause()
  {
    super.onPause();
    getActivity().unregisterReceiver(this.d);
    b.b("game_gift");
  }

  public void onResume()
  {
    super.onResume();
    getActivity().registerReceiver(this.d, new IntentFilter("update_game_item_status"));
    g();
    b.a("game_gift");
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.a = ((ListView)paramView.findViewById(2131493135));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.GameGiftFragment
 * JD-Core Version:    0.6.0
 */