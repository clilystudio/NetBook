package cn.sharesdk.onekeyshare.theme.classic;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import cn.sharesdk.framework.Platform;
import com.arcsoft.hpay100.a.a;
import java.util.List;

class EditPage$5
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    if ((EditPage.access$900(this.this$0) != null) && (EditPage.access$1000(this.this$0).size() > 0))
    {
      FollowListPage localFollowListPage = new FollowListPage();
      localFollowListPage.setPlatform((Platform)EditPage.access$1100(this.this$0).get(0));
      localFollowListPage.showForResult(EditPage.access$1200(this.this$0), null, this.this$0);
    }
    int i;
    do
    {
      return;
      i = a.e(EditPage.access$1300(this.this$0), "select_one_plat_at_least");
    }
    while (i <= 0);
    Toast.makeText(this.this$0.getContext(), i, 0).show();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.EditPage.5
 * JD-Core Version:    0.6.0
 */