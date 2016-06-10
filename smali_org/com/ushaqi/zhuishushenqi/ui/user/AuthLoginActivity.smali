.class public Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/View;

.field private e:Lcom/e/a/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b:Landroid/view/animation/Animation;

    .line 88
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->c:Landroid/view/View;

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/d;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V
    .locals 2

    .prologue
    .line 52
    .line 2157
    const v0, 0x7f0c0114

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2158
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->e:Lcom/e/a/a/g/a;

    if-nez v0, :cond_0

    .line 2160
    const-string v0, "wx29eb03c379f4bf24"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/e/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->e:Lcom/e/a/a/g/a;

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->e:Lcom/e/a/a/g/a;

    invoke-interface {v0}, Lcom/e/a/a/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2164
    const v0, 0x7f0500bf

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 2165
    :goto_0
    return-void

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->e:Lcom/e/a/a/g/a;

    const-string v1, "wx29eb03c379f4bf24"

    invoke-interface {v0, v1}, Lcom/e/a/a/g/a;->a(Ljava/lang/String;)Z

    .line 2170
    new-instance v0, Lcom/e/a/a/e/c;

    invoke-direct {v0}, Lcom/e/a/a/e/c;-><init>()V

    .line 2171
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/e/a/a/e/c;->a:Ljava/lang/String;

    .line 2172
    const-string v1, "zhuishushenqi"

    iput-object v1, v0, Lcom/e/a/a/e/c;->b:Ljava/lang/String;

    .line 2173
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->e:Lcom/e/a/a/g/a;

    invoke-interface {v1, v0}, Lcom/e/a/a/g/a;->a(Lcom/e/a/a/d/a;)Z

    .line 2175
    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1\u6388\u6743..."

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    .line 1141
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 1145
    const v0, 0x7f040015

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b:Landroid/view/animation/Animation;

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->c:Landroid/view/View;

    .line 52
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    .line 1228
    const v0, 0x7f0c0114

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1229
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 1232
    invoke-static {p0, p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 1233
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/e;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 1265
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->authorize()V

    .line 52
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 191
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    return v5

    .line 194
    :pswitch_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 198
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/f;

    const v3, 0x7f050129

    invoke-direct {v2, p0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/app/Activity;I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/f;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "\u6388\u6743\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->finish()V

    goto :goto_0

    .line 207
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->finish()V

    goto :goto_0

    .line 213
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6388\u6743\u88ab\u53d6\u6d88"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->finish()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0c0117

    const v4, 0x7f0c0116

    const v3, 0x7f0c0115

    .line 72
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->setContentView(I)V

    .line 74
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 1090
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1091
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1092
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1093
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1095
    const v0, 0x7f040015

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b:Landroid/view/animation/Animation;

    .line 1097
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/view/View;)V

    .line 1098
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/view/View;)V

    .line 1107
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/view/View;)V

    .line 1116
    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/c;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 84
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onWeixinAuthEvent$60b4a58a(Landroid/support/v7/widget/av;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/support/v7/widget/av;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/f;

    const v1, 0x7f050129

    invoke-direct {v0, p0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/support/v7/widget/av;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/f;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/av;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->finish()V

    goto :goto_0
.end method
