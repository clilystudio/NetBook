package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Bundle;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayVoucherRecord;
import com.ushaqi.zhuishushenqi.model.PayVoucherRecord.Voucher;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class af extends e<String, Void, List<PayVoucherRecord.Voucher>>
{
  private boolean a = true;

  public af(PayVoucherFragment paramPayVoucherFragment)
  {
    this.a = true;
  }

  public af(PayVoucherFragment paramPayVoucherFragment, boolean paramBoolean)
  {
    this.a = false;
  }

  private List<PayVoucherRecord.Voucher> a()
  {
    try
    {
      int i = this.b.getArguments().getInt("tag_index_key");
      String str = this.b.getArguments().getString("token_key");
      b.a();
      PayVoucherRecord localPayVoucherRecord = b.b().a(str, PayVoucherFragment.d(this.b)[i], PayVoucherFragment.a(this.b).size(), 10);
      if ((localPayVoucherRecord != null) && (localPayVoucherRecord.isOk()) && (localPayVoucherRecord.getVouchers() != null))
      {
        List localList = Arrays.asList(localPayVoucherRecord.getVouchers());
        return localList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.af
 * JD-Core Version:    0.6.0
 */