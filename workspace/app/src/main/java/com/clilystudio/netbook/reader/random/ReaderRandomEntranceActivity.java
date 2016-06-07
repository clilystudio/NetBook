package com.clilystudio.netbook.reader.random;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SAutoBgButton;

public class ReaderRandomEntranceActivity extends BaseActivity
  implements View.OnClickListener
{

  @InjectView(2131493156)
  SAutoBgButton mReadRandomBook;

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131493156:
    }
    new b(this, 2131034218, true).b(new String[0]);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903120);
    b("随机看书");
    ButterKnife.inject(this);
    this.mReadRandomBook.setOnClickListener(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.ReaderRandomEntranceActivity
 * JD-Core Version:    0.6.0
 */