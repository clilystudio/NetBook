package com.clilystudio.netbook.ui.game;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class GameLocalListActivity extends BaseActivity
{
  private RecyclerView a;
  private T b;
  private List<Game> c;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903102);
    b("我玩过的游戏");
    this.c = ((List)a.k(c.h, "played_game.txt"));
    if (this.c == null)
      this.c = new ArrayList();
    this.a = ((RecyclerView)findViewById(2131493133));
    this.a.setLayoutManager(new LinearLayoutManager(this));
    this.b = new T(this, LayoutInflater.from(this));
    this.a.setAdapter(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.GameLocalListActivity
 * JD-Core Version:    0.6.0
 */