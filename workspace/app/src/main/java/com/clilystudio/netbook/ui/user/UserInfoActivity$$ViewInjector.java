
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.CircularSmartImageView;

public class UserInfoActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, UserInfoActivity UserInfoActivity2, Object Object3)
    {
        UserInfoActivity2.mPortrait = (CircularSmartImageView) Finder1.findRequiredView( Object3, 2131493146, "field 'mPortrait'" );
        UserInfoActivity2.mName = (TextView) Finder1.findRequiredView( Object3, 2131492928, "field 'mName'" );
        UserInfoActivity2.mExp = (TextView) Finder1.findRequiredView( Object3, 2131493234, "field 'mExp'" );
        UserInfoActivity2.mLevel = (TextView) Finder1.findRequiredView( Object3, 2131493233, "field 'mLevel'" );
        UserInfoActivity2.mExpProgress = (ProgressBar) Finder1.findRequiredView( Object3, 2131493235, "field 'mExpProgress'" );
        UserInfoActivity2.mMessageCount = (TextView) Finder1.findRequiredView( Object3, 2131493239, "field 'mMessageCount'" );
    }

    public static void reset(UserInfoActivity UserInfoActivity1)
    {
        UserInfoActivity1.mPortrait = null;
        UserInfoActivity1.mName = null;
        UserInfoActivity1.mExp = null;
        UserInfoActivity1.mLevel = null;
        UserInfoActivity1.mExpProgress = null;
        UserInfoActivity1.mMessageCount = null;
    }
}
