package cn.sharesdk.onekeyshare.theme.skyblue;

import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.framework.Platform;

class EditPage$1
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    FollowListPage localFollowListPage = new FollowListPage();
    localFollowListPage.setPlatform((Platform)paramView.getTag());
    localFollowListPage.showForResult(EditPage.access$000(this.this$0), null, this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.EditPage.1
 * JD-Core Version:    0.6.0
 */