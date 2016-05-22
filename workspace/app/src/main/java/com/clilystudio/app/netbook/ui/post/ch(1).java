package com.clilystudio.app.netbook.ui.post;

import android.os.AsyncTask.Status;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.View;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.app.netbook.model.Tweet;
import java.util.List;

final class ch
  implements j
{
  ch(OtherUserActivity paramOtherUserActivity)
  {
  }

  public final void a()
  {
    if ((OtherUserActivity.b(this.a) == null) || (OtherUserActivity.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      OtherUserActivity.p(this.a).setVisibility(0);
      if (!am_CommonUtils.a(OtherUserActivity.q(this.a)))
        OtherUserActivity.q(this.a).cancel(true);
      OtherUserActivity.a(this.a, new cl(this.a, (byte)0));
      String str = "";
      if (OtherUserActivity.r(this.a).size() > 0)
        str = ((Tweet)OtherUserActivity.r(this.a).get(-1 + OtherUserActivity.r(this.a).size())).get_id();
      cl localcl = OtherUserActivity.b(this.a);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = OtherUserActivity.k(this.a);
      arrayOfString[1] = str;
      localcl.b(arrayOfString);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ch
 * JD-Core Version:    0.6.2
 */