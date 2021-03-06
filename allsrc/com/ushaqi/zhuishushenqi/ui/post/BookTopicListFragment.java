package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.squareup.a.b;
import com.squareup.a.l;
import com.ushaqi.zhuishushenqi.event.f;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.model.TopicPost;
import java.util.ArrayList;
import java.util.List;

public class BookTopicListFragment extends BookPostListFragment
{
  private aR h;
  private aQ i;
  private com.ushaqi.zhuishushenqi.adapter.j j;
  private List<TopicPost> k = new ArrayList();
  private com.handmark.pulltorefresh.library.j l = new aP(this);

  public static BookTopicListFragment d()
  {
    return new BookTopicListFragment();
  }

  private void e()
  {
    this.h = new aR(this, 0);
    aR localaR = this.h;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = a();
    arrayOfString[1] = this.f;
    localaR.b(arrayOfString);
  }

  public final void b()
  {
    super.b();
    this.d.setText("这里还没有话题，去发布一个吧");
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a.setOnRefreshListener(new aK(this));
    this.b.setOnItemClickListener(new aM(this));
    this.j = new com.ushaqi.zhuishushenqi.adapter.j(LayoutInflater.from(getActivity()));
    this.b.setAdapter(this.j);
    this.f = ((BookPostTabActivity)getActivity()).l();
    ((BookPostTabActivity)getActivity());
    this.g = BookPostTabActivity.a(this.f);
    e();
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    ((BookPostTabActivity)paramActivity).a(new aJ(this));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i.a().a(this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onRefreshEvent(f paramf)
  {
    if (this.a != null)
      this.a.setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.BookTopicListFragment
 * JD-Core Version:    0.6.0
 */