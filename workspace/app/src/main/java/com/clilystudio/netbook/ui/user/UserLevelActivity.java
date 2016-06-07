package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.e;

public class UserLevelActivity extends BaseActivity
{

  @InjectView(2131493248)
  TextView mCurrentLevel;

  @InjectView(2131493253)
  Button mDoTask;

  @InjectView(2131493249)
  TextView mLevelProgress;

  @InjectView(2131493250)
  TextView mLevelRank;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903142);
    ButterKnife.inject(this);
    b("经验等级");
    UserInfo localUserInfo = (UserInfo)MyApplication.a().b("savedObject_userinfo");
    int i = localUserInfo.getLv();
    int j = localUserInfo.getExp();
    int k = e.a(i);
    this.mCurrentLevel.setText(i + "级");
    this.mLevelProgress.setText(j + "/" + k);
    float f = localUserInfo.getRank();
    TextView localTextView = this.mLevelRank;
    StringBuilder localStringBuilder = new StringBuilder("超过");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(f * 100.0F);
    localTextView.setText(String.format("%.2f", arrayOfObject) + "%的追书用户");
    this.mDoTask.setOnClickListener(new aL(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.UserLevelActivity
 * JD-Core Version:    0.6.0
 */