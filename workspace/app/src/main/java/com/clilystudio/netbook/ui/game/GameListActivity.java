package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.widget.ListView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GameListActivity extends BaseLoadingActivity
{
  private Q a;
  private List<Game> b = new ArrayList();
  private GameCat c = null;
  private boolean e;
  private BroadcastReceiver f = new P(this);

  public static Intent a(Context paramContext, GameCat paramGameCat)
  {
    return new d().a(paramContext, GameListActivity.class).a("game_cat_list", paramGameCat).a();
  }

  private void a(List<Game> paramList)
  {
    this.b = paramList;
    this.a.a(paramList);
    j();
  }

  private void j()
  {
    if (this.e);
    do
      return;
    while ((this.b == null) || (this.b.size() <= 0));
    s.a(this, this.b);
    this.a.a(this.b);
  }

  protected final void b()
  {
    i();
    if (this.c != null)
    {
      f();
      a(Arrays.asList(this.c.getGames()));
      return;
    }
    new S(this, 0).b(new String[0]);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903321);
    Intent localIntent = getIntent();
    this.e = localIntent.getBooleanExtra("micro_game", false);
    if (localIntent.hasExtra("game_cat_list"))
      this.c = ((GameCat)getIntent().getSerializableExtra("game_cat_list"));
    for (String str = this.c.get_id(); ; str = localIntent.getStringExtra("game_list_title"))
    {
      b(str);
      ListView localListView = (ListView)findViewById(2131493135);
      localListView.setDividerHeight(0);
      localListView.setOnItemClickListener(new O(this));
      this.a = new Q(this, getLayoutInflater());
      localListView.setAdapter(this.a);
      b();
      return;
    }
  }

  public void onPause()
  {
    super.onPause();
    unregisterReceiver(this.f);
  }

  public void onResume()
  {
    super.onResume();
    registerReceiver(this.f, new IntentFilter("update_game_item_status"));
    j();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.GameListActivity
 * JD-Core Version:    0.6.0
 */