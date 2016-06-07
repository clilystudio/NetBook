package com.ushaqi.zhuishushenqi.ui.user;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.TopicPost;
import com.ushaqi.zhuishushenqi.ui.post.BookHelpActivity;
import com.ushaqi.zhuishushenqi.ui.post.PostDetailActivity;
import com.ushaqi.zhuishushenqi.ui.post.ReviewActivity;
import java.util.List;

final class D
  implements AdapterView.OnItemClickListener
{
  D(MyTopicFragment paramMyTopicFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - MyTopicFragment.g(this.a).getHeaderViewsCount();
    TopicPost localTopicPost;
    String str;
    Object localObject;
    if ((i >= 0) && (i < MyTopicFragment.h(this.a).size()))
    {
      localTopicPost = (TopicPost)MyTopicFragment.h(this.a).get(i);
      str = localTopicPost.getBlock();
      if (!"help".equals(str))
        break label117;
      Intent localIntent1 = new Intent(this.a.getActivity(), BookHelpActivity.class);
      localIntent1.putExtra("extraBookHelpId", localTopicPost.get_id());
      localObject = localIntent1;
    }
    while (true)
    {
      this.a.startActivity((Intent)localObject);
      return;
      label117: if ("review".equals(str))
      {
        Intent localIntent2 = new Intent(this.a.getActivity(), ReviewActivity.class);
        localIntent2.putExtra("extraReviewId", localTopicPost.get_id());
        localObject = localIntent2;
        continue;
      }
      Intent localIntent3 = new Intent(this.a.getActivity(), PostDetailActivity.class);
      localIntent3.putExtra("PostBookId", localTopicPost.get_id());
      localObject = localIntent3;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.D
 * JD-Core Version:    0.6.0
 */