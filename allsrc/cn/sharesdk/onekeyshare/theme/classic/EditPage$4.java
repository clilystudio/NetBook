package cn.sharesdk.onekeyshare.theme.classic;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageListResultsCallback;
import java.util.ArrayList;

class EditPage$4
  implements EditPageFakeActivity.ImageListResultsCallback
{
  public void onFinish(ArrayList<EditPageFakeActivity.ImageInfo> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      return;
    EditPage.access$502(this.this$0, (EditPageFakeActivity.ImageInfo)paramArrayList.get(0));
    EditPage.access$102(this.this$0, EditPage.access$500(this.this$0).bitmap);
    EditPage.access$300(this.this$0).setVisibility(0);
    EditPage.access$400(this.this$0).setVisibility(0);
    EditPage.access$700(this.this$0).setVisibility(8);
    EditPage.access$800(this.this$0).setImageBitmap(EditPage.access$100(this.this$0));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.EditPage.4
 * JD-Core Version:    0.6.0
 */