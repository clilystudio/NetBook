package com.clilystudio.app.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.clilystudio.app.netbook.model.GamePostRoot.GamePost;
import com.clilystudio.app.netbook.ui.post.PostDetailActivity;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import java.util.List;

final class e
  implements AdapterView.OnItemClickListener
{
  e(GameDetailActivity paramGameDetailActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - GameDetailActivity.b(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < GameDetailActivity.c(this.a).size()))
    {
      GamePostRoot.GamePost localGamePost = (GamePostRoot.GamePost)GameDetailActivity.c(this.a).get(i);
      Intent localIntent = PostDetailActivity.a(this.a, localGamePost.get_id(), "game");
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.e
 * JD-Core Version:    0.6.2
 */