.class public Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/User;

.field private b:J

.field private c:Z

.field private e:Z

.field mGenderSection:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c011c
    .end annotation
.end field

.field mGenderView:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c011d
    .end annotation
.end field

.field mNameSection:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c011b
    .end annotation
.end field

.field mNameView:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0040
    .end annotation
.end field

.field mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c011a
    .end annotation
.end field

.field mPortraitSection:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0119
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->c:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->e:Z

    .line 385
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;J)J
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "nickname_updated_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)V
    .locals 4

    .prologue
    .line 51
    .line 7170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v1, "male"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 7171
    const-string v0, "\u6ca1\u6709\u4fee\u6539"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 7172
    :goto_0
    return-void

    .line 7174
    :cond_0
    const-string v1, "\u6027\u522b\u4e00\u65e6\u786e\u5b9a\u5219\u65e0\u6cd5\u518d\u6b21\u4fee\u6539\uff01\u8bf7\u786e\u8ba4\u4f60\u9009\u62e9\u7684\u662f\u300c\u6027\u522b%s\u300d\u5417\uff1f"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v0, "\u7537"

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7175
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    .line 8036
    iput-object v2, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 8046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 7175
    const-string v0, "\u786e\u8ba4\u4fee\u6539"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/m;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)V

    .line 7176
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 7182
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0

    .line 7174
    :cond_1
    const-string v0, "\u5973"

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->e:Z

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x1a35

    const/4 v1, -0x1

    .line 244
    const/16 v0, 0x23ca

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6252
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cropped"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 6253
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/CropPhotoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6254
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6255
    const-string v0, "output"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6256
    invoke-virtual {p0, v2, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6263
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-ne p1, v4, :cond_0

    .line 6260
    if-ne p2, v1, :cond_2

    .line 7118
    const-string v0, "output"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6262
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/t;

    const-string v2, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247..."

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 6263
    :cond_2
    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    .line 7128
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 6264
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->c:Z

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2233
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    .line 2234
    :goto_1
    if-nez v0, :cond_2

    .line 2235
    const-string v1, "\u9700\u8981lv4\u624d\u80fd\u6362\u5934\u50cf\uff0c\u518d\u7528\u4e00\u6bb5\u65f6\u95f4\u8ffd\u4e66\u5427~"

    .line 2236
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u7b49\u7ea7\u4e0d\u591f"

    .line 3036
    iput-object v3, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 3046
    iput-object v1, v2, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 2236
    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v3, 0x0

    .line 2237
    invoke-virtual {v2, v1, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    invoke-virtual {v1}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 107
    :cond_2
    if-eqz v0, :cond_0

    .line 3197
    const-string v0, "EXTRA_CHANGE_AVATAR"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 108
    :goto_2
    if-eqz v0, :cond_5

    .line 4186
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    .line 5036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 4186
    const-string v1, "\u82e5\u7528\u8fdd\u89c4\u56fe\u7247\u4f5c\u5934\u50cf\uff0c\u4f1a\u88ab\u6c38\u4e45\u5c01\u53f7\u54e6\u3002"

    .line 5046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 4186
    const-string v1, "\u77e5\u9053\u4e86"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/n;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/n;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)V

    .line 4187
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 4193
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2233
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3197
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 111
    :cond_5
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 5201
    :pswitch_2
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b:J

    .line 5202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 5203
    sub-long v0, v2, v0

    .line 117
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 118
    const-string v2, "\u6682\u65f6\u65e0\u6cd5\u4fee\u6539"

    invoke-static {p0, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    :cond_6
    const-wide v2, 0x9a7ec800L

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 5207
    :cond_7
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5208
    const v0, 0x7f0c0168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5209
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5210
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5211
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u4fee\u6539\u6635\u79f0"

    .line 6036
    iput-object v3, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 5212
    invoke-virtual {v2, v1}, Luk/me/lewisdeane/ldialogs/h;->b(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v2, "\u4fdd\u5b58"

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/o;

    invoke-direct {v3, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/widget/EditText;)V

    .line 5213
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 5219
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    .line 5220
    invoke-virtual {v1}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5222
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/p;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    .line 124
    :cond_8
    const-wide v2, 0x9a7ec800L

    sub-long v0, v2, v0

    .line 125
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_9

    .line 126
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 127
    const-string v1, "\u518d\u8fc7%d\u5929\u624d\u80fd\u4fee\u6539\u54e6"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_9
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 130
    if-nez v0, :cond_a

    .line 131
    const/4 v0, 0x1

    .line 133
    :cond_a
    const-string v1, "\u518d\u8fc7%d\u5c0f\u65f6\u624d\u80fd\u4fee\u6539\u54e6"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :pswitch_3
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->e:Z

    if-eqz v0, :cond_b

    .line 139
    const-string v0, "\u53ea\u6709\u4e00\u6b21\u4fee\u6539\u6027\u522b\u7684\u673a\u4f1a\uff0c\u4f60\u5df2\u7ecf\u6539\u8fc7\u4e86\u54e6"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6148
    :cond_b
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6151
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 6152
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6153
    const v2, 0x7f0c0225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/k;

    invoke-direct {v3, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6160
    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/l;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0119
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->setContentView(I)V

    .line 83
    const-string v0, "\u7f16\u8f91\u8d44\u6599"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 1384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mGenderView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "male"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7537"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nickname_updated_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b:J

    .line 92
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 93
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->c:Z

    .line 94
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/r;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mPortraitSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mNameSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mGenderSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 89
    :cond_1
    const-string v0, "\u5973"

    goto :goto_0
.end method
