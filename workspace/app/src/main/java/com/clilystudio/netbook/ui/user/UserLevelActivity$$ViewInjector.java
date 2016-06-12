
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class UserLevelActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, UserLevelActivity UserLevelActivity2, Object Object3)
    {
        UserLevelActivity2.mCurrentLevel = (TextView) Finder1.findRequiredView( Object3, 2131493248, "field 'mCurrentLevel'" );
        UserLevelActivity2.mLevelProgress = (TextView) Finder1.findRequiredView( Object3, 2131493249, "field 'mLevelProgress'" );
        UserLevelActivity2.mLevelRank = (TextView) Finder1.findRequiredView( Object3, 2131493250, "field 'mLevelRank'" );
        UserLevelActivity2.mDoTask = (Button) Finder1.findRequiredView( Object3, 2131493253, "field 'mDoTask'" );
    }

    public static void reset(UserLevelActivity UserLevelActivity1)
    {
        UserLevelActivity1.mCurrentLevel = null;
        UserLevelActivity1.mLevelProgress = null;
        UserLevelActivity1.mLevelRank = null;
        UserLevelActivity1.mDoTask = null;
    }
}
