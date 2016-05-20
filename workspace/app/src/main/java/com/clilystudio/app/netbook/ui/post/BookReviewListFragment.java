package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.squareup.a.b;
import com.squareup.a.l;
import com.clilystudio.app.netbook.adapter.h;
import com.clilystudio.app.netbook.event.f;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.model.BookReview;
import java.util.ArrayList;
import java.util.List;

public class BookReviewListFragment extends BookPostListFragment
{
  private aI h;
  private aH i;
  private h j;
  private List<BookReview> k = new ArrayList();
  private j l = new aF(this);

  public static BookReviewListFragment d()
  {
    return new BookReviewListFragment();
  }

  private void e()
  {
    this.h = new aI(this, (byte)0);
    aI localaI = this.h;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = a();
    arrayOfString[1] = this.f;
    localaI.b(arrayOfString);
  }

  private void f()
  {
    Intent localIntent = new Intent(getActivity(), AddReviewRatingActivity.class);
    localIntent.putExtra("bookReviewBookId", a());
    localIntent.putExtra("isFromBookReviewList", true);
    startActivity(localIntent);
  }

  public final void b()
  {
    super.b();
    this.d.setText("这里还没有书评，去发布一个吧");
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a.setOnRefreshListener(new az(this));
    this.b.setOnItemClickListener(new aB(this));
    this.j = new h(LayoutInflater.from(getActivity()));
    this.b.setAdapter(this.j);
    this.f = ((BookPostTabActivity)getActivity()).l();
    ((BookPostTabActivity)getActivity());
    this.g = BookPostTabActivity.a(this.f);
    e();
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    ((BookPostTabActivity)paramActivity).b(new ay(this));
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.BookReviewListFragment
 * JD-Core Version:    0.6.2
 */