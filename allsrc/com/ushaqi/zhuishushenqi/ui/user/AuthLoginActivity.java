package com.ushaqi.zhuishushenqi.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v7.widget.av;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Toast;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.ShareSDK;
import com.squareup.a.l;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class AuthLoginActivity extends BaseActivity
  implements Handler.Callback
{
  private String a;
  private Animation b = null;
  private View c = null;
  private com.e.a.a.g.a e;

  public static Intent a(Context paramContext)
  {
    return new com.ushaqi.zhuishushenqi.d().a(paramContext, AuthLoginActivity.class).a();
  }

  private void a(View paramView)
  {
    paramView.setOnTouchListener(new d(this));
  }

  public boolean handleMessage(Message paramMessage)
  {
    Platform localPlatform = (Platform)paramMessage.obj;
    switch (paramMessage.arg1)
    {
    default:
      return false;
    case 1:
      String str1 = localPlatform.getDb().getUserId();
      String str2 = localPlatform.getDb().getToken();
      if ((str1 != null) && (str2 != null))
      {
        f localf = new f(this, this, 2131034409);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.a;
        arrayOfString[1] = str1;
        arrayOfString[2] = str2;
        localf.b(arrayOfString);
        return false;
      }
      Toast.makeText(this, "授权异常，请重新授权", 0).show();
      finish();
      return false;
    case 2:
      Toast.makeText(this, this.a + "授权失败", 0).show();
      finish();
      return false;
    case 3:
    }
    Toast.makeText(this, this.a + "授权被取消", 0).show();
    finish();
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903111);
    setTitle("");
    ShareSDK.initSDK(this);
    Window localWindow = getWindow();
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    localLayoutParams.dimAmount = 0.7F;
    localWindow.setAttributes(localLayoutParams);
    this.b = AnimationUtils.loadAnimation(this, 2130968597);
    a(findViewById(2131493142));
    findViewById(2131493142).setOnClickListener(new a(this));
    a(findViewById(2131493141));
    findViewById(2131493141).setOnClickListener(new b(this));
    a(findViewById(2131493143));
    findViewById(2131493143).setOnClickListener(new c(this));
    i.a().a(this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onWeixinAuthEvent$60b4a58a(av paramav)
  {
    if (paramav.f())
    {
      f localf = new f(this, this, 2131034409);
      String[] arrayOfString = new String[3];
      arrayOfString[0] = paramav.g();
      arrayOfString[1] = null;
      arrayOfString[2] = paramav.e();
      localf.b(arrayOfString);
      return;
    }
    Toast.makeText(this, paramav.e(), 0).show();
    finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity
 * JD-Core Version:    0.6.0
 */